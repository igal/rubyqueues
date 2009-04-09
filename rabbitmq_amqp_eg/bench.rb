#!/usr/bin/env ruby

require 'rubygems'
require 'amqp'
require 'mq'

# FIXME Find a better way to write this code

Signal.trap('INT') { AMQP.stop{ EM.stop } }
Signal.trap('TERM'){ AMQP.stop{ EM.stop } }

n = 5000
puts "* Benchmark #{n} iterations of enqueue/dequeue:"
timing = nil
done = false
AMQP.start(:host => 'localhost') do
  MQ.queue('i_queue').delete rescue nil
  queue = MQ.queue('i_queue')
  timing = Time.now
  for i in 1..n
    queue.publish(i.to_s)
  end

  i = 1
  queue.subscribe do |header, body|
    if AMQP.closing?
      done = true
    else
      ## p body
      i += 1
      AMQP.stop{ EM.stop } if i == n
    end
  end
end

until done
  sleep 0.001
end

puts "#{(n/(Time.now - timing)).to_i}/rps"

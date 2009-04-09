#!/usr/bin/env ruby

require 'rubygems'
require 'beanstalk-client'
require 'benchmark'

client = Beanstalk::Pool.new(['localhost:11300'])

n = 5000
puts "* Benchmark #{n} iterations of put-get:"
Benchmark.bm do |b|
  timing = b.report do
    for i in 1..n
      client.put(i.to_s)
      message = client.reserve
      message.body
      message.delete
    end
  end
  p n/timing.real
end

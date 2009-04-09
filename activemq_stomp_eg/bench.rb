#!/usr/bin/env ruby

require 'rubygems'
require 'stomp'
require 'benchmark'

# FIXME Find a better way to write this code

client = Stomp::Client.new("test", "user", "localhost", 61613, true)
destination = "/queue/test"

n = 5000
puts "* Benchmark #{n} iterations of put-get:"
Benchmark.bm do |b|
  timing = b.report do
    for i in 1..n
      client.send(destination, i.to_s, :persistent => true)
    end
    i = 1
    client.subscribe(destination) do |response| 
      ## p response.body
      i += 1
    end
    sleep 0.1 until i >= n 
  end
  p n/timing.real
end

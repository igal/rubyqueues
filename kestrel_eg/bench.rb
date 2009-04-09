#!/usr/bin/env ruby

require "rubygems"
require "benchmark"
require "memcache"

client = MemCache.new("localhost:22133")

n = 5000
puts "* Benchmark #{n} iterations of put-get:"
Benchmark.bm do |b|
  timing = b.report do
    for i in 1..n
      client.set("my_queue", i)
      client.get("my_queue")
    end
  end
  p n/timing.real
end

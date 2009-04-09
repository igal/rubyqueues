#!/usr/bin/env ruby

require "rubygems"
require "memcache"
require "benchmark"

client = MemCache.new("localhost:11212")

puts "* Primitive"
puts "- Put"
client.set("my_queue", "hello")
message = client.get("my_queue")
puts "- Get: #{message.inspect}"

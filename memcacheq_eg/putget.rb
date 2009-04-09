#!/usr/bin/env ruby

require 'rubygems'
require 'benchmark'
require 'memcache'

client = MemCache.new('localhost:22201')

puts "* Primitive"
puts "- Put"
client.set("my_queue", 12345)
message = client.get("my_queue")
puts "- Get: #{message.inspect}"

puts

puts "* Structure"
puts "- Put"
client.set("my_queue", {:foo => :bar})
message = client.get("my_queue")
puts "- Get: #{message.inspect}"

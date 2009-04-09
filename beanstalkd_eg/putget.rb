#!/usr/bin/env ruby

require 'rubygems'
require 'beanstalk-client'
require 'benchmark'

client = Beanstalk::Pool.new(['localhost:11300'])

puts "- Put"
client.put('hello')
message = client.reserve
puts "- Get: #{message.body.inspect}"
message.delete

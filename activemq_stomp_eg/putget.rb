#!/usr/bin/env ruby

require 'rubygems'
require 'stomp'
require 'benchmark'

client = Stomp::Client.new("test", "user", "localhost", 61613, true)
destination = "/queue/test"

puts "* Put and get:" 
message = false
client.subscribe(destination) {|response| message = response}
client.send(destination, "hello", :persistent => true)
sleep 0.01 until message
p message.body

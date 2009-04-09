#!/usr/bin/env ruby

require 'rubygems'
require 'benchmark'
require 'amqp'
require 'mq'

AMQP.start(:host => 'localhost') do
  puts "* Put"
  MQ.queue('my_queue').publish('hello')

  puts "* Get:"
  MQ.queue('my_queue').subscribe(:ack => true) do |header, message|
    p message
    header.ack
    AMQP.stop{ EM.stop }
  end
end

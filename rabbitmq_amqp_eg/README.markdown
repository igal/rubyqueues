RabbitMQ with AMQP
==================

Summary
-------

A powerful, sophisticated and modern standards-based message broker and messaging protocol.

Websites: [RabbitMQ server](http://www.rabbitmq.com/) and [Ruby 'tmm1-amqp' client](http://github.com/tmm1/amqp/tree/master).

PROS: Many compatible clients and servers. Scalable queue servers. Many subscription options.

CONS: Slower than most brokers. Client code is harder to write than other alternatives due to EventMachine-based client and additional complexity supported by protocol and broker.

EVALUATION: A good choice for sophisticated message queuing.

Setup
-----

Install from: [http://www.rabbitmq.com/server.html](http://www.rabbitmq.com/server.html)

Sample code
-----------

* [Put and get a message](putget.rb)
* [Run naive benchmark](bench.rb)

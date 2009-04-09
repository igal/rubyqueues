ActiveMQ with Stomp
===================

ActiveMQ is a powerful message broker, while Stomp is an open messaging protocol which supports many languages and brokers.

Websites: [ActiveMQ server](http://activemq.apache.org/) and [Ruby 'stomp' client](http://activemq.apache.org/ruby.html).

PROS: Server is stable, reliable and widely-used. Protocol is well-supported by many languages.

CONS: Somewhat slow. Awkward Ruby client interface.

EVALUATION: Reasonable choice if you need stability and multi-protocol support, e.g., JMS.

Sample code
-----------

* [Setup](setup.sh)
* [Start server](serve.sh)
* [Put and get a message](putget.rb)
* [Run naive benchmark](bench.rb)

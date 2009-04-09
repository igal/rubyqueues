Beanstalk
=========

Summary
-------

A high-performance C-language in-memory message broker with client libraries for many languages.

Websites: [Beanstalkd server](http://xph.us/software/beanstalkd/) and [Ruby 'beanstalk-client'](http://rubyforge.org/projects/beanstalk).

PROS: Very fast. Jobs are reserved so that if a client fails, it can be retried.

CONS: Messages are not persisted to disk. Not pure Ruby. No instructions on how to scale brokers.

EVALUATION: Consider something else if crash recovery and scaling matter.

Sample code
-----------

* [Setup](setup.sh)
* [Start server](serve.sh)
* [Put and get a message](putget.rb)
* [Run naive benchmark](bench.rb)

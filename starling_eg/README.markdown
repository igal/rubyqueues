Starling
========

Summary
-------

A pure Ruby message broker with a memcache interface.

Websites: [Starling server](http://rubyforge.org/projects/starling/) and [Ruby memcache-client](http://github.com/fiveruns/memcache-client/tree/master).

PROS: Fast. Easy setup and use.

CONS: Messages are appended to a log file representing the message queue, which continues to grow. When the server restarts, it must replay the entire contents of the queue, which can take a long time. Therefore, you are responsible for creating your own system for pruning the log file.

EVALUATION: A good choice if you can build a system to prune the queue regularly.

Sample code
-----------

* [Setup](setup.sh)
* [Start server](serve.sh)
* [Put and get a message](putget.rb)
* [Run naive benchmark](bench.rb)

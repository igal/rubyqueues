Kestrel
=======

Summary
-------

A Scala-based message broker with a memcache interface.

Website: [robey's kestrel](http://github.com/robey/kestrel/tree/master)

PROS: Can allegedly handle more concurrent clients than Starling. Doesn't suffer from Starling's log replay problems.

CONS: Slower than Starling when used with few clients. Obnoxious and trouble-prone compliation.

EVALUATION: May be worth if you have enough clients to make the performance loss worth it.

Sample code
-----------

* [Setup](setup.sh)
* [Start server](serve.sh)
* [Put and get a message](putget.rb)
* [Run naive benchmark](bench.rb)

Delayed::Job
============

Summary
-------

A pure Ruby plugin for Rails that uses the Rails database as a queue and runs jobs from it by polling.

Website: [tobi's Delayed::Job](http://github.com/tobi/delayed_job/tree/master)

PROS: Easy to setup and use. Can create jobs from methods or objects. Automatically handles serialization of complex objects. Includes friendly job runner, which catches exceptions and retries failed jobs. Queue is as scalable as your database.

CONS: Rails only. Slow and uses polling, not appropriate for fast turnaround or high-volume messaging.

EVALUATION: A good choice for most message queuing needs within Rails applications.

Sample code
-----------

* [Setup a sample Rails app with the plugin and sample jobs](setup.sh)
* [Start job runner](serve.sh)
* [Put and get an object instance as a job](putget_instance.rb)
* [Put and get an object method as a job](putget_method.rb)
* [Run naive benchmark](bench.rb)

# Run this script with ./script/runner from the 'rails_dj' directory.

Delayed::Job.enqueue(GreeterJob.new("Hello", "class"))

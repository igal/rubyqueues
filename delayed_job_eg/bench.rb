# Run this script with ./script/runner from the 'rails_dj' directory.

require 'benchmark'

n = 1000
puts "* Benchmark #{n} iterations of enqueue/dequeue:"
Benchmark.bm do |b|
  timing = b.report do
    for i in 0..n
      Delayed::Job.enqueue(MessageJob.new(i))
    end

    result = Delayed::Job.work_off
  end
  p n/timing.real
end

require "benchmark"

ARRAY = (1..100).to_a

def fast
  ARRAY[0]
end

def slow
  ARRAY.first
end

Benchmark.ips do |x|
  x.report("Array#[0]") { fast }
  x.report("Array#first") { slow }
end
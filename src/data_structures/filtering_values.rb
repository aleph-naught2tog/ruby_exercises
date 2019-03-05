#! /usr/bin/env ruby
require 'pp'

if __FILE__ == $0
  puts("running #{__FILE__}")
  print("will it blend? ")
  puts gets()
  .chomp()
  .split()
  .map { |n| n.to_i }
  .select { |n| n.even? }
  .reduce(1) { |accumulator, n| accumulator * n }
end

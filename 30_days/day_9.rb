#!/bin/ruby

require 'json'
require 'stringio'

# Complete the factorial function below.
def factorial(n)
  return 1 if n <= 1
  return n*factorial(n-1)
end

n = gets.to_i

result = factorial n

print result
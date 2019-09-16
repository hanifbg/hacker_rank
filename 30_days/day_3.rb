#!/bin/ruby

require 'json'
require 'stringio'



N = gets.to_i

def check(number)
	return "Weird" if number%2==1
	return "Not Weird"if number >= 2 && number < 5
	return "Weird" if number >= 6 && number <= 20
	return "Not Weird" if number > 20
end

puts check(N)
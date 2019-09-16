#!/bin/ruby

require 'json'
require 'stringio'



n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

arr_rev = arr.reverse!

arr_rev.each do |a|
	print a
	print " "
end
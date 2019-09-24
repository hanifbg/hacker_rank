#!/bin/ruby

require 'json'
require 'stringio'

n = gets.to_i
@result = []
while n > 0
	sisa = n % 2
	n = n / 2
	@result << sisa
end

starting = Time.now
i = 0
highest = 0

##first method
@result.reverse.each do |a|
	if a == 1
		i += 1
		temp = i
		highest = temp if temp >= highest
	end
	if a == 0
		temp = i
		i = 0
		highest = temp if temp >= highest
	end
end

##second method
# @result.reverse.each_with_index do |a, index|
# 	i += 1 if a == 1
# 	if a == 0
# 		temp = i
# 		i = 0
# 		highest = temp if temp >= highest
# 	end
#   if index == @result.reverse.size - 1
# 		temp = i
# 		i = 0
# 		highest = temp if temp >= highest
#   end
# end

print highest
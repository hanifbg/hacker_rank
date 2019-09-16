#!/bin/ruby

require 'json'
require 'stringio'



n = gets.to_i

(1..10).each do |a|
	puts "#{n} x #{a} = #{n*a}" 
end
#!/bin/ruby

require 'json'
require 'stringio'

n = gets.to_i

hash_rec = {}

(0..n-1).each do |a|
	string = gets.chomp
	split = string.split(" ")
	hash_rec[split[0]] = split[1]
end

def find_dictionary(dictionary, word)
	return "#{word}=#{dictionary[word]}" if dictionary.key?(word)
	return "Not found"
end

while cons = gets do 
	break if cons.chomp == "break"
	puts find_dictionary(hash_rec, cons.chomp)
end

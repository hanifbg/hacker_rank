#!/bin/ruby

require 'json'
require 'stringio'


arr = Array.new(6)
#arr = [[-1,-1,0,-9,-2,-2],[-2,-1,-6,-8,-2,-5],[-1,-1,-1,-2,-3,-4],[-1,-9,-2,-4,-4,-5],[-7,-3,-3,-2,-9,-9],[-1,-3,-1,-2,-4,-5]]

6.times do |i|
    arr[i] = gets.rstrip.split(' ').map(&:to_i)
end

i = 0
@highest = -999

def count_sum(arr_1, arr_2, arr_3)
  for i in 0..3 do
    temp = 0
    temp = arr_1[i]+arr_1[i+1]+arr_1[i+2]+arr_2[i+1]+arr_3[i]+arr_3[i+1]+arr_3[i+2]
    @highest = temp if temp > @highest
  end
end

while i <= 3
  count_sum(arr[i], arr[i+1], arr[i+2])
  i+=1
end

print @highest
		

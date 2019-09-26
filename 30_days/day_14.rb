
n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

def sort(list)
	if list.length <= 1
		list
	else
		mid = (list.length / 2).floor
		left = sort(list[0..mid-1])
		right = sort(list[mid..list.length])
		merge(left, right)
	end
end

def merge(left, right)
	if left.empty?
		right
	elsif right.empty?
		left
	elsif left.first < right.first
		[left.first] + merge(left[1..left.length], right)
	else
		[right.first] + merge(left, right[1..right.length])
	end
end

result = sort(arr)
print (result[-1] - result[0]).abs
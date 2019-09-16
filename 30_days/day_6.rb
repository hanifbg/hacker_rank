T = gets.to_i
(0..T-1).each do |a|
	str = gets.chomp
	lgt = str.length
	odd = ""
	even = ""
	(0..lgt-1).each do |b|
		if b.odd?
			odd << str[b]
		else
			even << str[b]
		end
	end
	puts "#{even} #{odd}"
end

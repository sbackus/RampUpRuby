#compares two strings

puts "Enter a long string:"
long = gets.chomp
puts "Enter a short strng:"
short = gets.chomp

if long[0..short.length-1]==short
	puts "They start with the same words."
else
	puts "They DO NOT start with the same words."
end
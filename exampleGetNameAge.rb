def get_name_and_age
	puts "Enter your name:"
	name = gets.chomp
	puts "Enter your age:"
	age = gets.to_i
	print name*age
end

get_name_and_age
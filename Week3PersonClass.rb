##Week 3 Lab Work - Person Class Example

class Person

	def initialize(name,age,gender,birth_date)
		@name = name
		@age = age
		@gender = gender
		@birth_date = birth_date
	end

	@time = Time.new

	def add_age
		if (time.month.to_s+"/"+time.day.to_s+"/"+time.year.to_s)==birth_date.to_s
			age += age
		end
	end

	def fix_name(name)
		name.capitalize!
	end

	def applied(status)
		puts "Yes" if status=="Applied"
		puts "No" if status!="Applied"
	end

end

puts "Would you like to add a new person (Y/N):"
add_new = gets.chomp

if add_new == "N"
	exit
elsif add_new == "Y"
	puts "Name:"
	name = gets.chomp.to_s
	puts "Age:"
	age = gets.chomp.to_i
	puts "Gender:" 
	gender = gets.chomp.to_s
	puts "Birth date:"
	birth_date = gets.chomp.to_s
end

applicant = Person.new(name,age,gender,birth_date)
puts applicant
Object.const_set(name,applicant)
puts Chris
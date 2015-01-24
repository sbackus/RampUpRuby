##Week 3 Lab Work - Person Class Example

class Person
	name
	age
	gender
	birth_date

	time = Time.new

	def add_age
		if (time.month.to_s+"/"+time.day.to_s+"/"+time.year.to_s)==birth_date.to_s
			age += age
	end

	def fix_name(name)
		name.capitalize!
	end
end
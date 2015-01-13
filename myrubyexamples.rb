def get_name_and_age
	puts "How much money do you have:"
	money = gets.to_f
	puts "What's the price:"
	price = gets.to_f
	puts "Are you hungry (Y/N):"
	is_hungry = gets.chomp
	puts "Are you willing to steal (Y/N):"
	willing_to_steal = gets.chomp
	puts "How many dogs do you have?"
	dogs = gets.to_i

	should_i_get_starbucks(money,price,willing_to_steal)
	should_i_buy_starbucks(money,price,is_hungry)
	should_i_buy_starbucks_case(money,price,is_hungry)
	evaluate_my_dogs(dogs)
end

##Samples of and/or's and if statements
def should_i_buy_starbucks(money,price,is_hungry)
	if (money>price) && is_hungry
		puts "time to drink!"
	end
end

def should_i_get_starbucks(money,price,willing_to_steal)
	if (price<money) || willing_to_steal
		puts "time to drink!"
	end
end

##Nested conditional

def should_i_buy_starbucks_case(money,price,is_hungry)
	if (money>=price)
		if is_hungry
			puts "time to drink!"
		end
	end 
end

##Case example

def evaluate_my_dogs(dogs)
	if dogs.integer? ##check this is correct
		case
		when dogs <5
			puts "not enough"
		when dogs == 5
			puts "just right"
		else
			puts "too many"
		end
		puts "after case" ##default case
	else
	"please enter an integer"
	end
end

get_name_and_age


#Week 3 - Fizz Buzz in class challenge

(1..100).each do |number|
	if number%3==0 && number%5==0
		puts "fizzbuzz"
	end

	if number%3==0
		puts "fizz"
	elsif number%5==0
		puts "buzz"
	else puts number
	end
end
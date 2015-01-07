puts "Hello World"
puts "This is my ruby program"

a = 10
b = 2

puts a/b

def calc_cost(gas,electric,rent,roommates)
	(gas+electric+rent)/roommates
end

puts calc_cost(10,90,3100,4)
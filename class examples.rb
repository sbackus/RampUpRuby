#typing .class will tell you what it is

#1.class # returns "fixnum"
#1.0.class # returns "Float"

#we can define our own classes, like "product" class that has a price.

#typing Class.Method list all methods assocatd with that class.
#String.Method as an example

#recall that a class can contain variables, functions(methods), requires, etc.
#Class is the blueprint

class Car #usual capitalized
	attr_accessor :speed #this + the @ side makes the speed variable availible outside the class
	def initialize  #when a Car object is created, this will create the variables in this function
		@speed = 0
	end

	def accelerate(amount)
		@speed+=amount
	end
end

#create a new Car "OBJECT", which is an concreate version of a class
mycar = Car.new
puts mycar.speed
puts mycar.accelerate(10)
puts mycar.speed

katecar = Car.new
puts katecar.speed
puts katecar.accelerate(100)
puts katecar.speed

#inheritance

class Minivan < Car #takes all Car stuff + what we add here
	attr_accessor :cupholders
	def initialize
		@cupholders
		super # this will "call" the "initialize function above to thus create speed = 0"
	end

	def accelerate(amount)
		@speed+=amount/2
	end
end

Dadcar = Minivan.new
puts Dadcar.speed
puts Dadcar.accelerate(10)
puts Dadcar.speed
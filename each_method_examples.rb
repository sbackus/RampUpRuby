##examples of an each

##each will iterate over "each" variable within whatever you want to give it.

#define an array
veh = ["car","plane","train"]

veh.each do |vehicle|
	puts "This is a test "+vehicle
end

# or say you wanted a set number of times
(0..5).each do |x|
	puts "This is a test "+x
end

#likely used to process something on an array
#one example from class was how facebook displays
#a friends list. The code for each friend is created via 
#a ruby each loop.
## This is a sample game to work with
## IF, ,ands, or's, and getting user prompts

puts "You are on a quest. You must find the gold!"

puts "Do you go North, South, East, or West?"
direction = gets.chomp

if direction == "North"
	puts "You are lost"
elsif direction == "South"
	puts "You are heading to the right place!"
elsif direction =="East"
	puts "Closer, but not quite right!"
elsif direction == "West"
	puts "Closer, but not quite right!"
end
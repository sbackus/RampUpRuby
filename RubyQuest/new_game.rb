require './room'
require './player'
require './enemy'
=begin
This is my attempt at writing a ruby text based
adventure game using classes and hashes.
=end

puts "Welcome to Ruby Quest!"
puts "You must search for the Ruby!"
puts "Please tell me your name seeker:"
name = gets.chomp
player1 = Player.new(name)

rooms = []
2.times do
	rooms << Room.new
end

rooms.each do |room|
	player1.enter(room)
end

=begin
Next steps:
1. assign an enemy type into each room that has an enemy
2. figure out how to get the rooms into an array
3. write the logic to iterate through the rooms
and when encountering an enemy go to a fight class and run
the fight code. if the user wins, game on, set the rooms enemy value to
false. If they lose, game over.
4. If they complete each room, they will get the ruby.
5. In each room they musy try to guess the direction. write a loop
that will go until the guess the correct direction. Use the same code
but call it on each room class as they move through the castle.

=end





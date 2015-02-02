=begin
This is my attempt at writing a ruby text based
adventure game using classes and hashes.
=end

puts "Welcome to Ruby Quest!"
puts "You must search for the Ruby!"
puts "Please tell me your name seeker:"
name = gets.chomp
#create player class
class Player
	attr_accessor :name
	def initialize(name)
		@name = name
	end
end
player1 = Player.new(name)

#generate an array of the rooms
class Room
	def initialize
		@has_enemy = true
		#create the walls hash
		@walls = { 
			:North => "",
			:South => "",
			:East => "",
			:West => ""
		}

		#randomly assign the open direction
		#get direction
		open_wall = rand(1..4)
		case open_wall
			when 1 then @walls[:North] = "open"
			when 2 then @walls[:South] = "open"
			when 3 then @walls[:East] = "open"
			when 4 then @walls[:West] = "open"
			else @walls[:North] = "open"
		end #end Case open_wall
	end #end initialize

	#randomly determine if this room will have an enemy
	def assign_enemy
		@has_enemy = rand(1..2)==1 ? true : false
	end #end assign_enemy

end #end class Room

room1 = Room.new
room2 = Room.new
room3 = Room.new
room4 = Room.new
room5 = Room.new
room6 = Room.new

room1.assign_enemy
room2.assign_enemy
room3.assign_enemy
room4.assign_enemy
room5.assign_enemy
room6.assign_enemy

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


class Enemy
	def initialize(type)
		@type = type
		case @type
			when "Troll" then @health = 5
			when "Giant" then @health = 10
			when "Dragon" then @health = 15
			else @health = 7
		end #case end
	end #initialize end
end #Enemy end




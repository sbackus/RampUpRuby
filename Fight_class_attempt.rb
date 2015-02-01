class Fight
	
	def initialize(health,enemy)
		 @attack_attempts=health
		 @hit_spot
		 case enemy
		 	when "troll" then @hit_spot = 7
		 	when "giant" then @hit_spot = 10
		 	else @hit_spot = 1
		 end
	end

	def attack()
		@attack_attempts.times do |x|
			puts "Attack number #{x}"
			puts "Enter a spot to strike! Pick a number between 1 and 10:"
			hit_spot = gets.chomp.to_i
			if hit_spot == @hit_spot
				puts "You won!"
				break
			end
		end
	end	
end

health=3
fight_troll = Fight.new(health,"troll")
fight_troll.attack

fight_giant = Fight.new(health,"giant")
fight_giant.attack

class enemy
	def initialize(type,level)
		@type = type
		@level = level
	end

	def level_up(factor)
		@level = @level + factor
	end
end
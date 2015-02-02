class Fight
	
	def initialize(health,enemy)
		 #@attack_attempts=health
		 @health=health
		 @attack_location="High"
		 @block_location=0.to_i
		 case enemy
		 	when "Troll" then @hit_spot = 2
		 	when "Giant" then @hit_spot = 3
		 	when "Dragon" then @hit_spot = 5
		 	else @hit_spot = 2
		 end
	end

=begin
This is an older attack method, no longer used
	def attack
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
=end

	def attack
		until (@health==0 || @hit_spot==0) do
			puts "Choose your attack (High/Low):"
			@attack_location=gets.chomp.to_s.capitalize
			@block_location=rand(1..2)
			if (@attack_location=="High" && @block_location==1) || (@attack_location=="Low" && @block_location==2)
				puts "Success! -1 health to your enemy!"
				@hit_spot = @hit_spot - 1
			else
				puts "Miss! Try again! -1 health to you! OUCH!"
				@health = @health - 1
			end #end if
		end #end until loop
		puts @health==0 ? "You lost! Game over" : "You win!"
	end #end attack 
end #end Fight

health=3
fight_troll = Fight.new(health,"Troll")
fight_troll.attack
#create player class
class Player
  attr_accessor :name
  attr_accessor :health

  def initialize(name)
    @health = 20
    @name = name
  end

  def enter(room)
    if room.has_enemy
      fight = Fight.new(self, room.enemy)
      fight.attack
    end

    puts "the room is cold and dark."
    puts "which way do you go?"
    puts "North, South, East, or West?"
    puts room.walls
    direction = gets.chomp.to_sym
    until room.walls[direction] == "open"
      puts "You stumble around in the dark. Choose a different direction."
      puts "North, South, East, or West?"
      direction = gets.chomp.to_sym
    end
    puts "you go to the next room! yay!"
  end
end
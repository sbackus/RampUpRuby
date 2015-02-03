require './fight'

#generate an array of the rooms
class Room

  attr_accessor :walls
  attr_accessor :has_enemy
  attr_accessor :enemy

  def initialize
    @has_enemy = assign_enemy

    if @has_enemy
      case rand(1..3)
        when 1 then @enemy = Troll.new
        when 2 then @enemy = Giant.new
        when 3 then @enemy = Dragon.new
        else @enemy = Troll.new
      end
      puts @enemy.description
    end
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
    rand(1..2)==1 ? true : false
  end #end assign_enemy

end #end class Room
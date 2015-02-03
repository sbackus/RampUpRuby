class Enemy
  attr_accessor :alive
  attr_accessor :health
  def initialize()
    @alive = true
  end #initialize end
end #Enemy end

class Troll < Enemy
  def initialize()
    @health = 2
  end

  def description
    "You see a troll with huge teeth and green skin"
  end
end

class Giant < Enemy
  def initialize()
    @health = 3
  end
  def description
    "A giant towers above you."
  end
end

class Dragon < Enemy
  def initialize()
    @health = 5
  end
  def description
    "You face down a dragon with scales like steel and breath like a furnace!"
  end
end
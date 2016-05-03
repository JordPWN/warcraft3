require_relative 'footman'
require_relative 'peasant'
require_relative 'siege_engine'
require_relative 'building'

class Barracks < Building

	attr_accessor :gold, :food, :health_points, :lumber

	def initialize(gold=1000, food=80, health_points=500, lumber=500)
		@gold = gold
		@food = food
    @health_points = health_points
    @lumber = lumber
	end

  def can_train_footman?
  	gold >= 135 && food >= 2 ? true : false
  end

  def train_footman
  	if can_train_footman? 
  		@gold -= 135
  		@food -= 2
  		Footman.new
  	else
  		puts "Not enough resources!"
  	end 
  end

  def is_dead?
    health_points > 0 ?  false : true
  end

  def can_train_peasant?
    gold >= 90 && food >= 5 ? true : false
  end

  def can_train_siege_engine?
    gold >= 200 && food >= 3 && lumber >= 60 ? true : false
  end
  
  def train_siege_engine
    if can_train_siege_engine?
      @gold -= 200
      @food -= 3
      @lumber -= 60
      SiegeEngine.new
  end
    
  end

  def train_peasant
    if can_train_peasant? 
      @gold -= 90
      @food -= 5
      Peasant.new
    else
      puts "Not enough resources!"
    end 
  end
  
  def damage(dmg)
    @health_points -= dmg
  end

end

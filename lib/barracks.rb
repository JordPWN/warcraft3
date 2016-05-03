require_relative 'footman'
require_relative 'peasant'

class Barracks

	attr_accessor :gold, :food

	def initialize(gold=1000, food=80)
		@gold = gold
		@food = food
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

  def can_train_peasant?
    gold >= 90 && food >= 5 ? true : false
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

end

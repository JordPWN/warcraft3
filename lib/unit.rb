class Unit
	
	attr_reader :attack_power, :health_points

  def initialize(health_points, attack_power)
    # Need to default the 2 instance variables here
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
    @health_points = health_points
    @attack_power = attack_power
  end

  public

  def can_attack?
  	@attack_power > 0 ? true : false
  end

  def damage(dmg)
  	@health_points -= dmg
  end

  def attack!(target)
  	if can_attack?
  		target.damage(attack_power)
  	end
  end

end
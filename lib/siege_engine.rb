require_relative 'unit'

class SiegeEngine < Unit

	attr_reader :attack_power, :health_points

	def initialize(health_points=400, attack_power=50)
		super
	end

  def attack!(target)
	if can_attack? && !target.is_dead?
		if target.is_a?(SiegeEngine)
			target.damage(attack_power)
		elsif target.is_a?(Barracks)
			target.damage(attack_power*2.ceil)
		end
	end
  return false
  end

end
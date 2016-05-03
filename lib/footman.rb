# http://classic.battle.net/war3/human/units/footman.shtml
require_relative 'unit'

class Footman < Unit

	attr_reader :attack_power, :health_points

	def initialize(health_points=60, attack_power=10)
		super
	end

	def attack!(target)
		if target.is_a?(Building) && !target.is_dead?
			target.damage(attack_power/2.ceil)
		elsif !target.is_dead?
			target.damage(attack_power)
		end
	end

end
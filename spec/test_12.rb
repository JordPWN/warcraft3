require_relative 'spec_helper'

describe Footman do

  before :each do
    @footman = Footman.new
  end

  it "is_dead? is true if health_points >= 0" do
  	expect(@footman).to receive(:health_points).and_return(0)
  	expect(@footman.is_dead?).to be_truthy
  end

  it "if a unit is_dead? it cannot attack." do
  	expect(@footman).to receive(:health_points).and_return(0)
  	expect(@footman.can_attack?).to be_falsey
  end

  it "You cannot attack a unit that is_dead?" do
  	enemy = Footman.new(0,0)
  	expect(@footman.attack!(enemy)).to be_falsey
  end

end
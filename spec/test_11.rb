require_relative 'spec_helper'

describe Barracks do

  before :each do
    @barracks = Barracks.new
  end

  it "has and knows its HP (health points)" do
    expect(@barracks.health_points).to eq(500)
  end

  it "Receives half damage from Footmen" do
  	footman = Footman.new
  	footman.attack!(@barracks)
  	expect(@barracks.health_points).to eq(495)
  end

  it "Has and knows its lumber" do 
    expect(@barracks.lumber).to eq(500)
  end
  
end
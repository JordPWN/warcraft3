require_relative 'spec_helper'

describe SiegeEngine do

  before :each do
    @siege_engine = SiegeEngine.new
    @barracks = Barracks.new
  end

  it "Siege Engine has (50) attack_power and can read it" do
    expect(@siege_engine.attack_power).to eq(50)
  end

  it "Siege Engine has (400) health_points and can read it" do 
    expect(@siege_engine.health_points).to eq(400)
  end

  it "Siege Engine costs 200g" do
    @barracks.train_siege_engine
    expect(@barracks.gold).to eq(800) # starts at 1000
  end

  it "Siege Engine costs 60 lumber" do
    @barracks.train_siege_engine
    expect(@barracks.lumber).to eq(440) # starts at 500
  end

  it "Siege Engine costs 3 food" do
    @barracks.train_siege_engine
    expect(@barracks.food).to eq(77) # starts at 80
  end

  it "deals double damage against barracks" do
    @siege_engine.attack!(@barracks)
    expect(@barracks.health_points).to eq(400)#starts at 500 health
  end

  it "can attack other siege_engines" do
    enemy = SiegeEngine.new
    @siege_engine.attack!(enemy)
    expect(enemy.health_points).to eq(350)#starts at 400 health
  end

  it "cannot attack non-barrack, non-siege_engine units" do
    enemy = Footman.new
    @siege_engine.attack!(enemy)
    expect(enemy.health_points).to eq(60)#starts at 60 health
  end

end
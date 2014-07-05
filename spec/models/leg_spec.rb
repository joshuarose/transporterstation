require 'spec_helper'

describe Leg do
  let!(:leg) { Leg.new }

  it "should have a description" do
    expect(leg.respond_to?('description')).to eq(true)
  end

  it "should have an address" do
    expect(leg.respond_to?('address')).to eq(true)
  end

  it "should have a city" do
    expect(leg.respond_to?('city')).to eq(true)
  end

  it "should have a state" do
    expect(leg.respond_to?('state')).to eq(true)
  end

  it "should have a zip" do
    expect(leg.respond_to?('zip')).to eq(true)
  end
end

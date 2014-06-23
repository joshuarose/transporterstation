require 'spec_helper'

describe Leg do
  let!(:leg) { Leg:new }

  it "should have a description" do
    expect(leg.respond_to?('description')).to be_true
  end

  it "should have an address" do
    expect(leg.respond_to?('address')).to be_true
  end

  it "should have a city" do
    expect(leg.respond_to?('city')).to be_true
  end

  it "should have a state" do
    expect(leg.respond_to?('state')).to be_true
  end

  it "should have a zip" do
    expect(leg.respond_to?('zip_code')).to be_true
  end
end

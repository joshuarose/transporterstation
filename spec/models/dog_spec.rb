require 'spec_helper'

describe Dog do
  let!(:dog) { Dog.new }

  it "should have a name" do
    expect(dog.respond_to?('name')).to eq(true)
  end

  it "should have weight" do
    expect(dog.respond_to?('weight')).to eq(true)
  end

  it "should have an image" do
    expect(dog.respond_to?('image')).to eq(true)
  end

  it "should have isolate" do
    expect(dog.respond_to?('isolate')).to eq(true)
  end

  it "should have gender" do
    expect(dog.respond_to?('gender')).to eq(true)
  end

  it "should have age" do
    expect(dog.respond_to?('age')).to eq(true)
  end

  it "should have location" do
    expect(dog.respond_to?('location')).to eq(true)
  end

  it "should have breed" do
    expect(dog.respond_to?('breed')).to eq(true)
  end
end

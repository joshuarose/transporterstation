require 'spec_helper'

describe Dog do
  let!(:dog) { Dog.new }

  it "should have a name" do
    expect(dog.respond_to?('name')).to be_true
  end

  it "should have weight" do
    expect(dog.respond_to?('weight')).to be_true
  end

  it "should have an image" do
    expect(dog.respond_to?('image')).to be_true
  end

  it "should have isolate" do
    expect(dog.respond_to?('isolate')).to be_true
  end

  it "should have gender" do
    expect(dog.respond_to?('gender')).to be_true
  end

  it "should have age" do
    expect(dog.respond_to?('age')).to be_true
  end

  it "should have location" do
    expect(dog.respond_to?('location')).to be_true
  end

  it "should have breed" do
    expect(dog.respond_to?('breed')).to be_true
  end
end

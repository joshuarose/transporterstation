require 'spec_helper'

describe Dog do
  let(:dog) { Dog.new }
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
end

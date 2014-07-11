require 'spec_helper'

describe DogsController do
  let(:controller) { DogsController.new}
  it "should have index" do
    expect(controller.respond_to?('index')).to eq(true)
  end
  it "should have show" do
    expect(controller.respond_to?('show')).to eq(true)
  end
  it "should have new" do
    expect(controller.respond_to?('new')).to eq(true)
  end
end

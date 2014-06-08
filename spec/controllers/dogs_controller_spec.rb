require 'spec_helper'

describe DogsController do
  let(:controller) { DogsController.new}
  it "should have index" do
    expect(controller.respond_to?('index')).to be_true
  end
  it "should have details" do
    expect(controller.respond_to?('show')).to be_true
  end
  it "should have new" do
    expect(controller.respond_to?('new')).to be_true
  end
end

require 'spec_helper'

describe DogController do
  let(:controller) { DogController.new}
  it "should have index" do
    expect(controller.respond_to?('index')).to be_true
  end
end

require 'spec_helper'

describe HomeController do
  let(:controller) { HomeController.new }

  it "should have index" do
    expect(controller.respond_to?('index')).to eq(true)
  end
end

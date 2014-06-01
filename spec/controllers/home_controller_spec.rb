require 'spec_helper'

describe HomeController do
  let(:controller) { HomeController.new }
  it { controller.respond_to?('index').should be_true}
end

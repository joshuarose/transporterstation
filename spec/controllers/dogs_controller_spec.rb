require 'spec_helper'

describe DogsController do
  it {should respond_to(:index) }
  it {should respond_to(:show) }
  it {should respond_to(:new) }
end

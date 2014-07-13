require 'spec_helper'

describe LegsController do
  it {should respond_to(:index) }
  it {should respond_to(:new) }
  it {should respond_to(:sign_up)}
end

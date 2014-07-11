require 'spec_helper'

describe Leg do
  it {should respond_to?('description') }
  it {should respond_to?('address') }
  it {should respond_to?('city') }
  it {should respond_to?('state') }
  it {should respond_to?('zip') }
  it {should belong_to :transport}
end

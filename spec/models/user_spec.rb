require 'spec_helper'

describe User do
  it {should respond_to?('name') }
  it {should respond_to?('phone') }
  it {should respond_to?('car_description') }
  it {should respond_to?('zip_code') }
end

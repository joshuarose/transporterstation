require 'spec_helper'

describe Organization do
  it {should respond_to?('organization_name') }
  it {should respond_to?('address') }
  it {should respond_to?('phone') }
  it {should respond_to?('website') }
  it {should respond_to?('contact_name') }
  it {should respond_to?('city') }
  it {should respond_to?('state') }
  it {should respond_to?('zip_code') }
end

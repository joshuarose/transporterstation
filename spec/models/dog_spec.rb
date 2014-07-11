require 'spec_helper'

describe Dog do
  it {should respond_to?('name') }
  it {should respond_to?('weight') }
  it {should respond_to?('image') }
  it {should respond_to?('isolate') }
  it {should respond_to?('gender') }
  it {should respond_to?('age') }
  it {should respond_to?('location') }
  it {should respond_to?('breed') }
  it {should belong_to :transport}
end

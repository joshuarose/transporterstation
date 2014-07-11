require 'spec_helper'

describe Transport do
  it { should have_many :dogs}
  it { should have_many :legs}
end

require 'spec_helper'

describe Transport do
  it { should respond_to?('run_date')}
  it { should respond_to?('start_time')}
  it { should have_many :dogs }
  it { should have_many :legs }
end

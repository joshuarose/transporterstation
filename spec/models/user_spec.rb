require 'spec_helper'

describe User do
  let(:user) { User.new }
  it "should have Name" do
    expect(user.respond_to?('name')).to be_true
  end
  it "should have Phone" do
    expect(user.respond_to?('phone')).to be_true
  end
  it "should have Car Description" do
    expect(user.respond_to?('car_description')).to be_true
  end
  it "should have zip code" do
    expect(user.respond_to?('zip_code')).to be_true
  end
end

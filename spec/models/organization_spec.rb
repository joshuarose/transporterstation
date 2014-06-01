require 'spec_helper'

describe Organization do
  let(:organization) { Organization.new }
  it "should have Organization Name" do
    expect(organization.respond_to?('organization_name')).to be_true
  end
  it "should have address" do
    expect(organization.respond_to?('address')).to be_true
  end
  it "should have phone" do
    expect(organization.respond_to?('phone')).to be_true
  end
  it "should have website" do
    expect(organization.respond_to?('website')).to be_true
  end
  it "should have contact name" do
    expect(organization.respond_to?('contact_name')).to be_true
  end
  it "should have city" do
    expect(organization.respond_to?('city')).to be_true
  end
  it "should have state" do
    expect(organization.respond_to?('state')).to be_true
  end
  it "should have zip_code" do
    expect(organization.respond_to?('zip_code')).to be_true
  end

end

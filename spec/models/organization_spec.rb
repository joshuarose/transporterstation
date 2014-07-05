require 'spec_helper'

describe Organization do
  let(:organization) { Organization.new }
  it "should have Organization Name" do
    expect(organization.respond_to?('organization_name')).to eq(true)
  end
  it "should have address" do
    expect(organization.respond_to?('address')).to eq(true)
  end
  it "should have phone" do
    expect(organization.respond_to?('phone')).to eq(true)
  end
  it "should have website" do
    expect(organization.respond_to?('website')).to eq(true)
  end
  it "should have contact name" do
    expect(organization.respond_to?('contact_name')).to eq(true)
  end
  it "should have city" do
    expect(organization.respond_to?('city')).to eq(true)
  end
  it "should have state" do
    expect(organization.respond_to?('state')).to eq(true)
  end
  it "should have zip_code" do
    expect(organization.respond_to?('zip_code')).to eq(true)
  end

end

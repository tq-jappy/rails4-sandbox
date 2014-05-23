require 'spec_helper'

describe "User" do

  it "is valid with a username, password, and email" do
    expect(build(:user)).to be_valid
  end

  it "is invalid without an email" do
    expect(build(:user, email: nil).errors_on(:email).size).to eql 1
  end
end

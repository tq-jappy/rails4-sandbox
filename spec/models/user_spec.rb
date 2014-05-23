require 'spec_helper'

describe "User" do

  it "is valid with a username and email" do
    user = User.new(
      username: "allen",
      password: "password",
      email: "allen@rails4.sandbox.com"
    )
    expect(user).to be_valid
  end

  it "is invalid without an email" do
    user = User.new(
      username: "allen",
      password: "password",
      email: nil
    )
    expect(user).to have(1).errors_on(:email)
  end
end

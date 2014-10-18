require 'spec_helper'

describe User do

  before { @user = User.new(name: "Markus Toeroek", email: "markus.toeroek@gmail.com") }

  it "should have a name" do
    @user.name = ""
    expect(@user.valid?).to eq(false)
  end

  it "should have an email" do
    @user.email = ""
    expect(@user.valid?).to eq(false)
  end

  it "should have unique email address" do
    duplicate_user = @user.dup
    @user.save
    expect(duplicate_user.valid?).to eq(false)
  end
end

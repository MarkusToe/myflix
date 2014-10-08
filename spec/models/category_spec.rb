require 'spec_helper'

describe Category do
  before(:each) do
    @c = Category.new(title: "Drama")
  end

  it "saves itself" do
    @c.save
    expect(Category.first).to eq(@c)
  end

  it "should have many videos" do
    c = Category.reflect_on_association(:videos)
    expect(c.macro).to eq(:has_many)
  end
end

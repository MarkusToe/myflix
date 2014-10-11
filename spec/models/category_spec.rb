require 'spec_helper'
require 'shoulda/matchers'

describe Category do
  before(:each) do
    @c = Category.new(title: "Drama")
  end

  it { should have_many(:videos) }
end

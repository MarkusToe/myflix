require 'spec_helper'
require 'shoulda/matchers'

describe Video do
  before(:each) do
    @video = Video.new(title: "Monk", description: "a great video!")
  end

  it { should belong_to(:category) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }
end

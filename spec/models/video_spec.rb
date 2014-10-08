require 'spec_helper'
require 'shoulda/matchers'

describe Video do
  before(:each) do
    @video = Video.new(title: "Monk", description: "a great video!")
  end


  it "saves itself" do
    @video.save
    expect(Video.first).to eq(@video)
  end

  it { should belong_to(:category)}

  it "should require a title" do
    v = Video.new(description: "a great video")
    expect(v).not_to be_valid
  end

  it "should require a description" do
    v = Video.new(title: "South Park")
    expect(v).not_to be_valid
  end
end

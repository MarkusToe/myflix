require 'spec_helper'
require 'shoulda/matchers'

describe Category do
  it { should have_many(:videos) }

  describe "#recent_videos" do
    context "when there are more than 6 videos" do
      it "should return 6 videos" do
        comedy = Category.create(title: "comedy")

        monk = Video.create(title: "monk", description: "detective story", category: comedy)
        futurama = Video.create(title: "futurama", description: "funny", category: comedy, created_at: 1.day.ago)
        expect(comedy.recent_videos).to eq([monk, futurama])
      end
    end

    context "when there are less than 6 videos" do
      it "should return all videos" do
        comedy = Category.create(title: "comedy")

        monk = Video.create(title: "monk", description: "detective story", category: comedy)
        futurama = Video.create(title: "futurama", description: "funny", category: comedy)
        south_park = Video.create(title: "south park", description: "detective story", category: comedy)
        simpsons = Video.create(title: "simpsons", description: "funny", category: comedy)
        adventure_time = Video.create(title: "adventure_time", description: "detective story", category: comedy)
        sailor_moon = Video.create(title: "sailor moon", description: "funny", category: comedy)
        dragon_ball = Video.create(title: "dragon_ball", description: "funny", category: comedy)

        expect(comedy.recent_videos).to eq([dragon_ball, sailor_moon, adventure_time, simpsons, south_park, futurama])
      end
    end
  end
end

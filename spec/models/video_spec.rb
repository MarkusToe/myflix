require 'spec_helper'
require 'shoulda/matchers'

describe Video do
  # let(:video) { Video.new(title: "Family Guy", description: "funny Tv show") }

  it { should belong_to(:category) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }

  describe '#search_by_title' do
    context 'when video is found' do
      it "should return array with video" do
        family_guy = Video.create(title: "Family Guy", description: "funny TV show")
        modern_family = Video.create(title: "Modern Family", description: "funny TV show")
        result = Video.search_by_title("family")
        expect(result).to eq([family_guy, modern_family])
      end
    end

    context 'when no video is found' do
      it "should return empty array" do
        futurama = Video.create(title: "Futurama", description: "from the simpsons creators")
        result = Video.search_by_title("family")
        expect(result).to eq([])
      end
    end
  end
end

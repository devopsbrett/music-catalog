require 'spec_helper'

describe "A music", Track do
  
  it 'should be properly initialized' do
  	expect(create(:track)).to be_a(Track)
  end

  context 'with empty values' do
  	let(:track) { Track.new }

  	it { expect(track).to have_at_least(1).errors_on(:artist) }
  	it { expect(track).to have_at_least(1).errors_on(:title) }

  	it 'should default to not owned' do
  		expect(track.owned).to be_false
  	end
  end

  describe '#display_name' do
  	it "should return the artist and title seperated by -" do
  		track = build(:track, artist: "Mark Knight", title: "Your Love")
  		expect(track.display_name).to eq("Mark Knight - Your Love")
  	end
  end
end

class Track < ActiveRecord::Base
	validates :artist, :title, presence: true

	def display_name
		"#{artist} - #{title}"
	end
end

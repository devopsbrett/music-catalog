class Track < ActiveRecord::Base
	belongs_to :user
	validates :artist, :title, presence: true

	def display_name
		"#{artist} - #{title}"
	end
end

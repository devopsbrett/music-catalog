class AddUserRefToTracks < ActiveRecord::Migration
  def change
    add_reference :tracks, :user, index: true

    u = User.first
    reversible do |dir|
    	dir.up { Track.update_all user_id: u.id }
    end
  end
end
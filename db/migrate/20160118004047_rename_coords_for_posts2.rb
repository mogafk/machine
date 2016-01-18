class RenameCoordsForPosts2 < ActiveRecord::Migration
  def change
  	rename_column :posts, :lat, :latitude
  	rename_column :posts, :lng, :longitude
  end
end

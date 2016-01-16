class ChangeCoordsName < ActiveRecord::Migration
  def change
  	rename_column :posts, :latitude, :lat
  	rename_column :posts, :longitude, :lng
  end
end

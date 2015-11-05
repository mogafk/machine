class ForeignKeyForPosts < ActiveRecord::Migration
  def change
  	change_table :posts do |t|
  		t.remove :user_id
  		t.belongs_to :user, index: true
  	end
  end
end

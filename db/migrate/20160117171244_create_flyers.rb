class CreateFlyers < ActiveRecord::Migration
  def change
    create_table :flyers do |t|
      t.string :descr
      t.string :title

      t.timestamps null: false
    end
  end
end

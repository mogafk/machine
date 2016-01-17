class AddAttachmentArticleToFlyers < ActiveRecord::Migration
  def self.up
    change_table :flyers do |t|
      t.attachment :article
    end
  end

  def self.down
    remove_attachment :flyers, :article
  end
end

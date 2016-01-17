class Flyer < ActiveRecord::Base

  has_attached_file :article, styles: {thumb: "300x", small: "200x"}



  validates_attachment :article, content_type: { content_type: ["application/pdf", "image/jpg","image/jpeg" ]}
  #validates_something_else # Other validations that conflict with Paperclip's
  belongs_to :posts
end

class Post < ActiveRecord::Base



belongs_to :user
has_one :flyer
geocoded_by :address
after_validation :geocode

has_attached_file :photo, styles: {thumb: "300x", small: "200x"} 
validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
end

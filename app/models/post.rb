class Post < ActiveRecord::Base

belongs_to :user
has_one :flyer
geocoded_by :address
after_validation :geocode

end

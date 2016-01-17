class Flyer < ActiveRecord::Base

  has_attached_file :article, styles: 
  			{thumb: "300x"
  			}



  validates_attachment :article, content_type: { content_type: "application/pdf" }
  #validates_something_else # Other validations that conflict with Paperclip's

end

class Product < ActiveRecord::Base
	has_attached_file :photo,
		:url => "/system/:attachment/:id/:style/:basename.:extension",
  		:path => ":rails_root/public/system/:attachment/:id/:style/:basename.:extension"
	validates_attachment_presence :photo
validates_attachment_size :photo, :less_than => 1.megabytes
validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png', 'image/jpg']
end

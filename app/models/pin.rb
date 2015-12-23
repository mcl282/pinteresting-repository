class Pin < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }

	#do_not_validate_attachment_file_type :image
	#validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	#validates_attachment :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	

end

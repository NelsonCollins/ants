class Post < ActiveRecord::Base
	dragonfly_accessor :image

	dragonfly_accessor :photo 
	
# 	has_attached_file :image,styles: {large: "600x600>",medium: "300x300>", thumb:"150x150"}
# # 	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
# # end
	
	belongs_to :user
	has_many :comments
end

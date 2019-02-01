class Movie < ActiveRecord::Base
	#searchkick
	belongs_to :user
	has_many :reviews

  mount_uploader :image, ImageUploader
	#has_attached_file :image, styles: { medium: "400x600#" }
  #validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end


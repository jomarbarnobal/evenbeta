class Event < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image, styles: { large: "1500x500>", medium: "450x450>", thumb: "300x300" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	
end

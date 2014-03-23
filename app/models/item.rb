class Item < ActiveRecord::Base
	belongs_to :user
	
	has_many :images, :dependent => :destroy
	accepts_nested_attributes_for :images

	has_attached_file :thumb, styles: { small: "200x200"}
	validates :content, presence: true
	validates :price, presence: true
	validates :title, presence: true, length: { maximum: 140 }
	validates :user_id, presence: true
	validates_attachment :thumb, presence: true, content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/gif', 'image/png']}, size: { less_than: 4.megabytes}
  	default_scope -> { order('created_at DESC') }
end

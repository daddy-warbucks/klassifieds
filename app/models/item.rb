class Item < ActiveRecord::Base
	belongs_to :user
	validates :content, presence: true
	validates :price, presence: true
	validates :title, presence: true, length: { maximum: 140 }
	validates :user_id, presence: true
  	default_scope -> { order('created_at DESC') }
end

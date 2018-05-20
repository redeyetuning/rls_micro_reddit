class Post < ApplicationRecord
	validates :title, presence: true, length: {maximum: 40}
	validates :body, presence: true
	validates :user_id, presence: true

	belongs_to :user 

end
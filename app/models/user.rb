class User < ApplicationRecord
	validates :email, presence: true, length:{minimum: 6}, uniqueness: {case_sensitive: false}
	
	validates :name, presence: true

	has_secure_password
	validates :password, presence:true, length:{minimum: 6}

	#has_many Posts

end

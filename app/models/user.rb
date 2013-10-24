class User < ActiveRecord::Base
	validates :email, presence: true, uniqueness: true

	has_many :friendships

  has_secure_password

end
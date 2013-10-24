class Friendship < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true

  belongs_to :user
  has_many :posts

end

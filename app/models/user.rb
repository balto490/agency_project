class User < ApplicationRecord
	acts_as_commontator
	acts_as_followable
	acts_as_follower
	has_many :posts
	has_many :comments
  	devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable
end

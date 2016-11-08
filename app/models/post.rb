class Post < ApplicationRecord
	acts_as_commontable
  	belongs_to :users
  	has_many :comments
end

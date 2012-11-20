class Post < ActiveRecord::Base
	attr_accessible :title , :content, :created_at
	has_many :comments
end

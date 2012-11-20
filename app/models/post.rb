class Post < ActiveRecord::Base
	attr_accessible :title , :content, :created_at, :blogger_id , :full_name
	has_many :comments
	belongs_to :blogger
end

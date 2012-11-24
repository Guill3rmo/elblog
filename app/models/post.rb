class Post < ActiveRecord::Base
	attr_accessible :title , :content, :created_at, :blogger_id , :full_name, :image
	has_many :comments
	has_many :anonymous_comments
	has_many :user_comments
	belongs_to :blogger

has_attached_file :image
 
	has_attached_file :image, :styles => { :small => "300x300>" }, :default_url => "/assets/images/default.gif"
    
    validates_attachment_size :image, :less_than => 5.megabytes


end

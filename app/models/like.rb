class Like < ActiveRecord::Base
 
	 attr_accessible :blogger_id, :comment_id
	 belongs_to :comment
	 belongs_to :blogger
end

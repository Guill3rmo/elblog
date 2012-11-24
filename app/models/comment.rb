class Comment < ActiveRecord::Base
  attr_accessible :visitor, :message, :created_at, :post_id, :type
  belongs_to :post
  has_many :likes

  validates :visitor, presence: true
  validates :message, presence: true

end

=begin
  attr_accessible   :message, :created_at, :post_id
 
  belongs_to :post
  validates :presence => true
  validates :message, presence: true
end
=end

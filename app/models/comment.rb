class Comment < ActiveRecord::Base
  attr_accessible :visitor, :message
  belongs_to :post
end

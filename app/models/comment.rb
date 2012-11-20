class Comment < ActiveRecord::Base
  attr_accessible :visitor, :message, :created_at
  belongs_to :post

  validates :visitor, presence: true
  validates :message, presence: true
end

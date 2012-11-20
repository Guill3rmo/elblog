class Blogger < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me , :full_name, :blogger_id

validates :full_name, presence: true    
validates :email, presence: true    
validates :password, presence: true   
validates :password_confirmation, presence: true    

  has_many :posts
end

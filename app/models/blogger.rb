class Blogger < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me , :full_name, :blogger_id ,:provider, :uid

validates :full_name, presence: true    
validates :email, presence: true    
validates :password, presence: true   
validates :password_confirmation, presence: true    

def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
  user = Blogger.where(:provider => auth.provider, :uid => auth.uid).first
  unless user
    user = Blogger.create(full_name:auth.extra.raw_info.name,
                         provider:auth.provider,
                         uid:auth.uid,
                         email:auth.info.email,
                         password:Devise.friendly_token[0,20]
                         )
  end
  user
end

def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

#Relacion
  has_many :posts
end

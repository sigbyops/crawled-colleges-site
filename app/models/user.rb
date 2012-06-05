# == Schema Information
#
# Table name: users
#
#  id              :integer         not null, primary key
#  name            :string(255)
#  email           :string(255)
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#  password_digest :string(255)
#  remember_token  :string(255)
#  admin           :boolean         default(FALSE)
#

class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation
  has_secure_password
  
  has_many :microposts, dependent: :destroy # dependent is belonging to user
  
  before_save { self.email.downcase! } # or |user| user.email = email.downcase
  before_save :create_remember_token
  
  # validate valid name 
  validates :name, presence: true, length: { maximum:50 } # or validates(:name, presence:true)
  
  # validate valid email
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
					uniqueness: { case_sensitive: false }

  # validate valid password
  validates :password, presence: true, length: { minimum:6 }
  validates :password_confirmation, presence: true
  
  def feed
    # This is preliminary. See "Following users" for the full implementation.
    Micropost.where("user_id = ?", id)
  end
  
  private
    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end

class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }
  has_many :purchases

  has_many :follows
  has_many :followees, through: :follows
  has_many :inverse_follows, class_name: "Follow", foreign_key: 'followee_id'
  has_many :inverse_followees, through: :inverse_follows, source: :user
  
end

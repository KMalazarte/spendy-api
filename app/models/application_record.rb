class ApplicationRecord < ActiveRecord::Base
  has_secure_password
  self.abstract_class = true
  validates :username, uniqueness: { case_sensitive: false }
end

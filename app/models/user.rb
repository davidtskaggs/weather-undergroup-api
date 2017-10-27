class User < ActiveRecord::Base
  validates :username, presence: true, uniqueness: true
  validates :password, length: {minimum: 6}
  has_many :locations

  has_secure_password
end

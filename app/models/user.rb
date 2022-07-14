class User < ApplicationRecord
  belongs_to :cart

  has_secure_password
  validates :username, presence: true, uniqueness: true
end

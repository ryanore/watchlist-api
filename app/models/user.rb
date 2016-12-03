VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

class User < ApplicationRecord
  has_secure_password
	has_many :movies
	has_many :tags

  enum role: [ :user, :admin ]

  validates :first_name, :last_name,
    presence: true,
    length: { minimum: 2 }

  validates :email,
    presence: true,
    uniqueness: true,
    format: {
      with: VALID_EMAIL_REGEX,
      message: "only valid email address"
    }
end

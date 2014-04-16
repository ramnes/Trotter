class User < ActiveRecord::Base
  attr_accessible :email, :name, :username,
  :password, :password_confirmation,
  :avatar_url, :background_url

  validates :email, uniqueness: true, presence: true,
  format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}
  validates :password, length: { minimum: 6},
  confirmation: true
  validates :username, uniqueness: true, presence: true
end

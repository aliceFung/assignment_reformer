class User < ActiveRecord::Base
  validates :username, :email, :password
end
class User < ActiveRecord::Base
  validates :username,
            :length => {maximum: 5},
            :allow_blank => true

  validates :email,
            :presence => true,
            :uniqueness => true,
            :length => {maximum: 15}

  validates :password,
            :presence => true
end
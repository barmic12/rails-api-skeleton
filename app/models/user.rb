class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :registerable, :recoverable, :validatable,
         :database_authenticatable,
         :jwt_authenticatable, jwt_revocation_strategy: JWTBlacklist

  has_many :lists
end

class User < ApplicationRecord
  has_many :user_cabins
  has_many :cabins, through: :user_cabins
  has_many :comments


end

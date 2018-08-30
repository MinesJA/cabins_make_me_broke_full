class Cabin < ApplicationRecord
  has_many :user_cabins
  has_many :users, through: :user_cabins
  has_many :images
  has_many :comments

end

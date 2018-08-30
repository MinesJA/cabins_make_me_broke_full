class Cabin < ApplicationRecord
  has_many :user_cabins
  has_many :users, through: :user_cabins
  has_many :images

end

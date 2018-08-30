class UserCabin < ApplicationRecord
  belongs_to :user
  belongs_to :cabin
end

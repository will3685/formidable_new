class Favorito < ApplicationRecord
  belongs_to :salon
  belongs_to :user
end

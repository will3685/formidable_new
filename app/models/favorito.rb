class Favorito < ApplicationRecord
  belongs_to :salon
  belongs_to :user
  validates :salon_id, uniqueness: { scope: :user_id}
end

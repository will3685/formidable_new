class Salon < ApplicationRecord
  has_many :salon_categories

  has_many :categories, through: :salon_categories
end

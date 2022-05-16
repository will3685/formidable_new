class Category < ApplicationRecord
  has_many :salon_categories

  has_many :salons, through: :salon_categories

end

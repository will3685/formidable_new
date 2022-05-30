class Salon < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :salon_categories
  has_many :categoryservicos
  has_many :agendamentos


  has_many :categories, through: :salon_categories
  has_many :servicos, through: :categoryservicos
end

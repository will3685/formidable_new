class Salon < ApplicationRecord
  has_many :salon_categories
  has_many :categoryservicos
  has_many :agendamentos


  has_many :categories, through: :salon_categories
  has_many :servicos, through: :categoryservicos
end

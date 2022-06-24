class Salon < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :salon_categories
  has_many :category_servicos
  has_many :agendamentos
  has_one_attached :photo
  has_many_attached :photos
  belongs_to :user
  has_many :reviews
  validates :name, presence: true, uniqueness: { scope: :user_id }
  validates :address, presence: true


  has_many :categories, through: :salon_categories
  has_many :servicos, through: :category_servicos

  def avg_score
    return 0 unless reviews.count.positive?
    reviews.average(:score).round(2).to_f
  end
end

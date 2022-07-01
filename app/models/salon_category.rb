class SalonCategory < ApplicationRecord
  belongs_to :salon
  belongs_to :category

  validates_uniqueness_of :category_id, :scope => :salon_id, :message => "Can only have one category assigned"
end

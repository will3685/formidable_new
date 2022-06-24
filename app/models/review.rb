class Review < ApplicationRecord
  belonds_to :salon
  belongs_to :user
end

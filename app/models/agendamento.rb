class Agendamento < ApplicationRecord
  belongs_to :salon
  belongs_to :user
  belongs_to :categoryservico
end

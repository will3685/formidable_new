class Agendamento < ApplicationRecord
  belongs_to :user
  belongs_to :categoryservico
end

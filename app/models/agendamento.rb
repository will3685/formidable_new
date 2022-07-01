class Agendamento < ApplicationRecord
  belongs_to :user
  belongs_to :category_servico
end

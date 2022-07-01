class CategoryServico < ApplicationRecord
  belongs_to :servico
  belongs_to :salon
end

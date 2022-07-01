class RemoveSalonIdFromAgendamentos < ActiveRecord::Migration[6.0]
  def change
    remove_column :agendamentos, :salon_id
  end
end

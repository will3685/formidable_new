class AddUserAndSalonToAgendamentos < ActiveRecord::Migration[6.0]
  def change
    add_reference :agendamentos, :salon, null: false, foreign_key: true
    add_reference :agendamentos, :user, null: false, foreign_key: true
  end
end

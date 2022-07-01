class CreateAgendamentos < ActiveRecord::Migration[6.0]
  def change
    create_table :agendamentos do |t|
      t.datetime :scheduled_time

      t.timestamps
    end
  end
end

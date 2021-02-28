class CreateAgents < ActiveRecord::Migration[6.1]
  def change
    create_table :agents do |t|
      t.string :agent_name
      t.string :phone_number
      t.string :delivery_status

      t.timestamps
    end
  end
end

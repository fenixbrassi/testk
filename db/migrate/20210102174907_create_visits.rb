class CreateVisits < ActiveRecord::Migration[6.0]
  def change
    create_table :visits do |t|
      t.string :ip_conn
      t.string :user_agent
      t.string :operating_system
      t.integer :amount_visits
      t.integer :shortest_path_id

      t.timestamps
    end
  end
end

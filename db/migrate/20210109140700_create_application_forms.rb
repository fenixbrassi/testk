class CreateApplicationForms < ActiveRecord::Migration[6.0]
  def change
    create_table :application_forms do |t|
      t.integer :form_id
      t.integer :user_id

      t.timestamps
    end
  end
end

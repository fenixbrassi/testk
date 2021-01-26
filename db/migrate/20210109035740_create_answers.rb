class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.integer :application_form_id
      t.integer :question_id
      t.string :value

      t.timestamps
    end
  end
end

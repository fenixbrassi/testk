class AddFormIdToQuestion < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :form_id, :integer
  end
end

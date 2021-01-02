class AddUserIdToShortestPaths < ActiveRecord::Migration[6.0]
  def change
    add_column :shortest_paths, :user_id, :integer
  end
end

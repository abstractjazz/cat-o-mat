class AddUserColumnToMinigames < ActiveRecord::Migration[6.1]
  def change
    add_column :minigames, :user_id, :integer
  end
end

class RemoveUserIdFromCats < ActiveRecord::Migration[6.1]
  def change
    remove_column :cats, :user_id  
  end
end

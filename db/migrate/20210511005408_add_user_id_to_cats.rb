class AddUserIdToCats < ActiveRecord::Migration[6.1]
  def change
    add_column :cats, :user_id, :integer 
  end
end

class AddCreatorIdToCats < ActiveRecord::Migration[6.1]
  def change
    add_column :cats, :creator_id, :integer
  end
end

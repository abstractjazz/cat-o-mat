class RemoveCreatorIdFromCats < ActiveRecord::Migration[6.1]
  def change
    remove_column :cats, :creator_id
  end
end

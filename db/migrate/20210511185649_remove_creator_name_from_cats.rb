class RemoveCreatorNameFromCats < ActiveRecord::Migration[6.1]
  def change
    remove_column :cats, :creator_name
  end
end

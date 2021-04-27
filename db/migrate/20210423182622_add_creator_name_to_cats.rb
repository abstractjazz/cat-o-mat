class AddCreatorNameToCats < ActiveRecord::Migration[6.1]
  def change
    add_column :cats, :creator_name, :string
  end
end

class AddColumnToCats < ActiveRecord::Migration[6.1]
  def change
    add_column :cats, :cat_url, :string
  end
end

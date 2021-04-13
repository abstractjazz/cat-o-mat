class CreateTrades < ActiveRecord::Migration[6.1]
  def change
    create_table :trades do |t|
      t.integer :user_id
      t.integer :cat_id

      t.timestamps
    end
  end
end

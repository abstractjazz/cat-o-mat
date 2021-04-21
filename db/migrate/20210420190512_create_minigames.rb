class CreateMinigames < ActiveRecord::Migration[6.1]
  def change
    create_table :minigames do |t|

      t.timestamps
    end
  end
end

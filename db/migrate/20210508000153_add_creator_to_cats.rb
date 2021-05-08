class AddCreatorToCats < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :creator, index: true 
  end
end

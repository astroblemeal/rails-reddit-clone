class DropCommuities < ActiveRecord::Migration[6.0]
  def change
    drop_table :commuities
  end
end

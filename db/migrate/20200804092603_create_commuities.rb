class CreateCommuities < ActiveRecord::Migration[6.0]
  def change
    create_table :commuities do |t|

      t.timestamps
    end
  end
end

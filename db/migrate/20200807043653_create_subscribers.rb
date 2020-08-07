class CreateSubscribers < ActiveRecord::Migration[6.0]
  def change
    create_table :subscribers do |t|
      t.references :user
      t.references :community
      t.timestamps
    end
  end
end
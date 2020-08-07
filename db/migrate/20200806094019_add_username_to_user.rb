class AddUsernameToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :username, :string
    t.references :user
    t.references :community
    t.timestamps
  end
end

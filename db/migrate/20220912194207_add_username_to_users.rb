class AddUsernameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string, null: false, default: ""
  end

  add_index :users, :username, unique: true
end

class DropUsers < ActiveRecord::Migration[5.1]
  def change
    drop_table :users
    ## Add Role for different rights
    # t.string :role, default => "Guest"
  end
end

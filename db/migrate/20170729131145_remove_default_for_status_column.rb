class RemoveDefaultForStatusColumn < ActiveRecord::Migration[5.1]
  def change
    change_column :requests, :approval_status, :string, :default => nil
  end
end

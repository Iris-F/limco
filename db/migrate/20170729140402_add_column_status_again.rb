class AddColumnStatusAgain < ActiveRecord::Migration[5.1]
  def change
    add_column :requests, :status, :string, :default => 'Waiting for Approval'
    change_column_default :requests, :approval_status, 'Waiting for Approval'
  end
end

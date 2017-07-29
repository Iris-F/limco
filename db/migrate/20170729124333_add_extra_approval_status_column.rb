class AddExtraApprovalStatusColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :requests, :approval_status, :string, default: 'Waiting for Approval'
  end
end

class ChangeStatusColumnDefault < ActiveRecord::Migration[5.1]
  def change
    change_column_default :requests, :status, 'Waiting for Approval'
  end
end

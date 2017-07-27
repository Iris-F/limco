class ChangeDefaultForColumStatus < ActiveRecord::Migration[5.1]
  def change
    change_column :requests, :status, :integer, default: 1
  end
end

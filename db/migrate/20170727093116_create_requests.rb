class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.string :name
      t.string :email
      t.date :startdate
      t.date :enddate
      t.integer :noofguests
      t.boolean :children
      t.string :childreninfo
      t.integer :status

      t.timestamps
    end
  end
end

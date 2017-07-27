class AddCommentToRequests < ActiveRecord::Migration[5.1]
  def change
    add_column :requests, :comment, :text
  end
end

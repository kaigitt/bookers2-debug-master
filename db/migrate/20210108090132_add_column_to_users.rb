class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_id, :string
    add_column :users, :book_id, :string
  end
end

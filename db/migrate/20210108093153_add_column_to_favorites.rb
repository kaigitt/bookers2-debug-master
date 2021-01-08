class AddColumnToFavorites < ActiveRecord::Migration[5.2]
  def change
    add_column :favorites, :user_id, :string
    add_column :favorites, :book_id, :string
  end
end

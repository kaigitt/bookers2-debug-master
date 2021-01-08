class RemoveTextFromBookComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :book_comments, :text, :string
  end
end

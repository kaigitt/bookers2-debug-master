class RenameUserFollowedColumnToRelationships < ActiveRecord::Migration[5.2]
  def change
    rename_column :relationships, :user_followed, :user_followed_id
  end
end

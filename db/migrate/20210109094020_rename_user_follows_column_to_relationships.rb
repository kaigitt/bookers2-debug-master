class RenameUserFollowsColumnToRelationships < ActiveRecord::Migration[5.2]
  def change
    rename_column :relationships, :user_follows, :user_follows_id
  end
end

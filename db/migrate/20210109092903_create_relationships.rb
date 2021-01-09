class CreateRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :relationships do |t|
      t.integer :user_follows
      t.integer :user_followed

      t.timestamps
    end
  end
end

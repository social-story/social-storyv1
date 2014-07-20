class CreateUstories < ActiveRecord::Migration
  def change
    create_table :ustories do |t|
      t.string :story
      t.integer :user_id
      t.integer :micropost_id

      t.timestamps
    end
    add_index :ustories, [:user_id, :topic_id, :created_at]
  end
end


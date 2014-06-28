class AddSuperWriterToUsers < ActiveRecord::Migration
  def change
    add_column :users, :superWriter, :boolean, default: false
  end
end

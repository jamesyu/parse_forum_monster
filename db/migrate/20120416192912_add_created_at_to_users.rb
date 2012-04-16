class AddCreatedAtToUsers < ActiveRecord::Migration
  def self.up
    add_column :local_users, :created_at, :datetime
    add_column :local_users, :updated_at, :datetime
  end

  def self.down
    remove_column :local_users, :created_at
    remove_column :local_users, :updated_at
  end
end

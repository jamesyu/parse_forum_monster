class UpdateUsersTable < ActiveRecord::Migration
  def self.up
    add_column :local_users, :topics_count, :integer, :default => 0
    add_column :local_users, :posts_count, :integer, :default => 0
  end

  def self.down
    remove_column :local_users, :topics_count
    remove_column :local_users, :posts_count
  end
end

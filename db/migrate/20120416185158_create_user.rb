class CreateUser < ActiveRecord::Migration
  def up
    create_table :local_users do |t|
      t.string :username, :unique => true
    end

    add_index :local_users, :username
  end

  def down
    drop_table :local_users
  end
end

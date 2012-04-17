class AddObjectIdToUsers < ActiveRecord::Migration
  def change
    change_table :local_users do |t|
      t.string :objectId, :unique => true
    end
  end
end

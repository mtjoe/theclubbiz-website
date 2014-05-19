class AddUserPhoto < ActiveRecord::Migration
  def self.up
  	add_column :users, :photo, :text
  end

  def self.down
  	remove_column :users, :photo
  end
end

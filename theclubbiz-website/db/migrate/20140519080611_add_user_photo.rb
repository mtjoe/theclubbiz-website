class AddUserPhoto < ActiveRecord::Migration
  def self.up
  	add_column :Users, :photos, :string
  end

  def self.down
  	remove_column :Users, :photos
  end
end

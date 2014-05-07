class CreateEventFollowers < ActiveRecord::Migration
  def change
    create_table :event_followers do |t|
      t.belongs_to :users
	  t.belongs_to :events
      t.timestamps
    end
  end
end

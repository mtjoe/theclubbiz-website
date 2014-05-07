class CreateEventFollowers < ActiveRecord::Migration
  def change
    create_table :event_followers do |t|

      t.timestamps
    end
  end
end

class CreateEventFeedbacks < ActiveRecord::Migration
  def change
    create_table :event_feedbacks do |t|

      t.timestamps
    end
  end
end

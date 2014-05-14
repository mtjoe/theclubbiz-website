class CreateEventFeedbacks < ActiveRecord::Migration
  
  def change
    create_table :event_feedbacks do |t|
      t.belongs_to :event
      t.text :text
   	  t.belongs_to :user
      t.timestamps
    end
  end
end

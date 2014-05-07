class CreateEventFeedbacks < CreateFeedbacks
  
  def change
    create_table :event_feedbacks do |t|
      t.belongs_to :events
      t.timestamps
    end
  end
end

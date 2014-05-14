class CreateEventFeedbacks < CreateFeedbacks
  
  def change
    create_table :event_feedbacks do |t|
      t.belongs_to :event
      t.timestamps
    end
  end
end

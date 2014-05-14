class CreateSocietyFeedbacks < CreateFeedbacks
  def change
    create_table :society_feedbacks do |t|
      t.belongs_to :society
      t.timestamps
    end
  end
end

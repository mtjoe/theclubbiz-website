class CreateSocietyFeedbacks < CreateFeedbacks
  def change
    create_table :society_feedbacks do |t|
      t.belongs_to :societies
      t.timestamps
    end
  end
end

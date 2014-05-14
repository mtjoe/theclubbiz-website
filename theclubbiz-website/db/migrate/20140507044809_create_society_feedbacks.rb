class CreateSocietyFeedbacks < ActiveRecord::Migration
  def change
    create_table :society_feedbacks do |t|
      t.belongs_to :society
      t.text :text
      t.belongs_to :user
      t.timestamps
    end
  end
end

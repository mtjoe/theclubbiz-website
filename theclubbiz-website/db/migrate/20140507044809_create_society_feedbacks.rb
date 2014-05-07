class CreateSocietyFeedbacks < ActiveRecord::Migration
  def change
    create_table :society_feedbacks do |t|

      t.timestamps
    end
  end
end

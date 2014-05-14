class CreateFeedbacks < ActiveRecord::Migration
  
  def change
    create_table :feedbacks do |t|
    	t.text :text
    	t.belongs_to :user

      t.timestamps
    end
  end
end

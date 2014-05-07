class CreateSocieties < ActiveRecord::Migration
  def change
    create_table :societies do |t|
    	t.string :name
    	t.text :description
    	t.string :office_location
    	t.string :email
    	t.string :tags
    	t.integer :phone_number
    	t.integer :admin_ids
    	t.integer :event_ids
    	t.integer :follower_ids
    	t.integer :feedback_ids

      t.timestamps
    end
  end
end

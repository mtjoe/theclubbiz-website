class CreateEvents < ActiveRecord::Migration
  
  def change
    create_table :events do |t|
    	t.string :name
    	t.string :time
    	t.string :location
    	t.string :website
    	t.string :tags
    	t.integer :max_tickets

      t.timestamps
    end
  end
end

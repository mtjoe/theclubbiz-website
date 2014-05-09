class CreateEvents < ActiveRecord::Migration
  
  def change
    create_table :events do |t|
    	t.string :name
    	t.datetime :time
    	t.string :location_address_line1
      t.string :location_address_line2
      t.string :location_state
      t.string :location_city
      t.integer :location_postcode
    	t.string :website
    	t.integer :max_tickets

      t.timestamps
    end
  end
end

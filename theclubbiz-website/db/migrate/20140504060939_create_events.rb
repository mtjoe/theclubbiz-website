class CreateEvents < ActiveRecord::Migration
  
  def change
    create_table :events do |t|
    	t.string :name
    	t.datetime :start_time
      t.datetime :end_time
    	t.string :location_address_line1
      t.string :location_address_line2
      t.string :location_state
      t.string :location_city
      t.integer :location_postcode
    	t.string :website
    	t.integer :max_tickets
      t.integer :ticket_price
      t.belongs_to :category
      t.text :image1
      t.text :image2
      t.text :image3

      t.timestamps
    end
  end
end

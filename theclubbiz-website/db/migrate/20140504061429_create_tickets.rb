class CreateTickets < ActiveRecord::Migration
  
  def change
    create_table :tickets do |t|
    	t.belongs_to :event
    	t.belongs_to :user
    	t.integer :price
      t.timestamps
    end
  end
end

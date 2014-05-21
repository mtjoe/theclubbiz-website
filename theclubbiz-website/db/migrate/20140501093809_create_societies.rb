class CreateSocieties < ActiveRecord::Migration
  def change
    create_table :societies do |t|
    	t.string :name
      t.text :logo 
    	t.text :description
      t.text :short_description
      t.string :website
    	t.string :office_address_line1
      t.string :office_address_line2
      t.string :office_state
      t.string :office_city
      t.integer :office_postcode
    	t.string :email
    	t.string :phone_number
      t.belongs_to :university
      t.belongs_to :category

      t.timestamps
    end
  end
end

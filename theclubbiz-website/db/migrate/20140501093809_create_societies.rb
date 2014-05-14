class CreateSocieties < ActiveRecord::Migration
  

  def change
    create_table :societies do |t|
    	t.string :name
      t.text :logo, default = "/assets/default-picture.png"
    	t.text :description
      t.text :short_description
      t.string :website
      t.string :university
    	t.string :office_address_line1
      t.string :office_address_line2
      t.string :office_state
      t.string :office_city
      t.integer :office_postcode
    	t.string :email
    	t.integer :phone_number

      t.timestamps
    end
  end
end

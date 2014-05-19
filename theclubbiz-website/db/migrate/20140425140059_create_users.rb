class CreateUsers < ActiveRecord::Migration
  
  def change
    create_table :users do |t|
    	t.string :first_name
    	t.string :last_name
      t.string :username
      t.text :about
      t.string :photo
    	t.integer :phone_number

      	t.timestamps
    end
  end
end

class CreateNetworks < ActiveRecord::Migration
  def change
    create_table :networks do |t|
      t.string :name
      t.text :description
      t.text :image, default = "/assets/default-picture.png"
      t.belongs_to :user
      t.timestamps
    end
  end
end

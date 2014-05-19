class CreateNetworks < ActiveRecord::Migration
  def change
    create_table :networks do |t|
      t.string :name
      t.text :description
      t.string :image
      t.belongs_to :user
      t.timestamps
    end
  end
end

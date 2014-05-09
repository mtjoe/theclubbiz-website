class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.text :image1
      t.text :image2
      t.text :image3
      t.belongs_to :events
      t.belongs_to :users
      t.belongs_to :societies
      t.timestamps
    end
  end
end

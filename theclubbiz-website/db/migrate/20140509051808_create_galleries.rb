class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.text :image1, default = "/assets/default-picture.png"
      t.text :image2
      t.text :image3
      t.belongs_to :event
      t.belongs_to :user
      t.belongs_to :society
      t.timestamps
    end
  end
end

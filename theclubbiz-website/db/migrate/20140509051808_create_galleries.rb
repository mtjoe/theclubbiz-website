class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :image1
      t.string :image2
      t.string :image3
      t.belongs_to :event
      t.belongs_to :user
      t.timestamps
    end
  end
end

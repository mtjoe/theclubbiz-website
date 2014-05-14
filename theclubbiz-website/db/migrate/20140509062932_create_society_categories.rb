class CreateSocietyCategories < ActiveRecord::Migration
  def change
    create_table :society_categories do |t|
      t.belongs_to :society
      t.belongs_to :category
      t.timestamps
    end
  end
end

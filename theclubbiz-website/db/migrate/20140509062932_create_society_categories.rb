class CreateSocietyCategories < ActiveRecord::Migration
  def change
    create_table :society_categories do |t|
      t.belongs_to :societies
      t.belongs_to :categories
      t.timestamps
    end
  end
end

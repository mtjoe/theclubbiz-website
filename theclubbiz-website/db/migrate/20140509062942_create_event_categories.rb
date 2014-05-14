class CreateEventCategories < ActiveRecord::Migration
  def change
    create_table :event_categories do |t|
      t.belongs_to :event
      t.belongs_to :category
      t.timestamps
    end
  end
end

class CreateEventCategories < ActiveRecord::Migration
  def change
    create_table :event_categories do |t|
      t.belongs_to :events
      t.belongs_to :categories
      t.timestamps
    end
  end
end

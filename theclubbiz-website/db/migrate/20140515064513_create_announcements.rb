class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
    t.belongs_to :user
    t.belongs_to :university
    t.string :subject
    t.text :text
    t.timestamps
    end
  end
end

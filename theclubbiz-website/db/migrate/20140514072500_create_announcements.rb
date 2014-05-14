class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.belongs_to :university
      t.belongs_to :user
      t.timestamps
    end
  end
end

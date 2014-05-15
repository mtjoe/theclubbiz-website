class CreateSocietyAnnouncements < ActiveRecord::Migration
  def change
    create_table :society_announcements do |t|
    	t.belongs_to :announcement
    	t.belongs_to :society
    	t.timestamps
    end
  end
end

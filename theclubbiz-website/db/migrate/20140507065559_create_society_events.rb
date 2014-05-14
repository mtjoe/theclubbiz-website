class CreateSocietyEvents < ActiveRecord::Migration
  def change
    create_table :society_events do |t|
      t.belongs_to :event
	  t.belongs_to :society
      t.timestamps
    end
  end
end

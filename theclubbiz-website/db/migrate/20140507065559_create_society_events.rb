class CreateSocietyEvents < ActiveRecord::Migration
  def change
    create_table :society_events do |t|
      t.belongs_to :events
	  t.belongs_to :societies
      t.timestamps
    end
  end
end

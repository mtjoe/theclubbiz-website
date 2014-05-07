class CreateSocietyEvents < ActiveRecord::Migration
  def change
    create_table :society_events do |t|

      t.timestamps
    end
  end
end

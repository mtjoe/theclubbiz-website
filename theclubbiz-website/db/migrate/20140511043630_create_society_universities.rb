class CreateSocietyUniversities < ActiveRecord::Migration
  def change
    create_table :society_universities do |t|
   	  t.belongs_to :societies
   	  t.belongs_to :universities
      t.timestamps
    end
  end
end

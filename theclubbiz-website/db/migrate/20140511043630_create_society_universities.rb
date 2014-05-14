class CreateSocietyUniversities < ActiveRecord::Migration
  def change
    create_table :society_universities do |t|
   	  t.belongs_to :society
   	  t.belongs_to :university
      t.timestamps
    end
  end
end

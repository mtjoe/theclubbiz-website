class CreateSocietyUniversities < ActiveRecord::Migration
  def change
    create_table :society_universities do |t|

      t.timestamps
    end
  end
end

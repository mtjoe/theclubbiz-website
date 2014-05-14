class CreateUniversityAdmins < ActiveRecord::Migration
  def change
    create_table :university_admins do |t|
      t.belongs_to :university
      t.belongs_to :user
      t.timestamps
    end
  end
end

class CreateSocietyAdmins < ActiveRecord::Migration
  def change
    create_table :society_admins do |t|
      t.belongs_to :users
      t.belongs_to :societies
      t.timestamps
    end
  end
end

class CreateSocietyAdmins < ActiveRecord::Migration
  def change
    create_table :society_admins do |t|

      t.timestamps
    end
  end
end

class CreateSocietyFollowers < ActiveRecord::Migration
  def change
    create_table :society_followers do |t|

      t.timestamps
    end
  end
end

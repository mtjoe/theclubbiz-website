class CreateSocietyFollowers < ActiveRecord::Migration
  def change
    create_table :society_followers do |t|
      t.belongs_to :users
      t.belongs_to :societies
      t.timestamps
    end
  end
end

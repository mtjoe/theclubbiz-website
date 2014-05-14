class CreateSocietyFollowers < ActiveRecord::Migration
  def change
    create_table :society_followers do |t|
      t.belongs_to :user
      t.belongs_to :society
      t.timestamps
    end
  end
end

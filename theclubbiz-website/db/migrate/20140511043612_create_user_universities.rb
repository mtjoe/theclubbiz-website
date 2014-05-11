class CreateUserUniversities < ActiveRecord::Migration
  def change
    create_table :user_universities do |t|
      t.belongs_to :users
   	  t.belongs_to :universities
      t.timestamps
    end
  end
end

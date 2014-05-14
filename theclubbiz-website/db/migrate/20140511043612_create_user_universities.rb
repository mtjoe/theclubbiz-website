class CreateUserUniversities < ActiveRecord::Migration
  def change
    create_table :user_universities do |t|
      t.belongs_to :user
   	  t.belongs_to :university
      t.timestamps
    end
  end
end

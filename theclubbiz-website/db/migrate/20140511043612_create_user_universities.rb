class CreateUserUniversities < ActiveRecord::Migration
  def change
    create_table :user_universities do |t|

      t.timestamps
    end
  end
end

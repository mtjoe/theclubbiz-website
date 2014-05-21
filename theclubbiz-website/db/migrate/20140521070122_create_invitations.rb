class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.belongs_to :society
      t.belongs_to :event
      t.timestamps
    end
  end
end

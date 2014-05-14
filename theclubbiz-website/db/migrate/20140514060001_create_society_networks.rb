class CreateSocietyNetworks < ActiveRecord::Migration
  def change
    create_table :society_networks do |t|
      t.belongs_to :network
      t.belongs_to :society
      t.timestamps
    end
  end
end

class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.string :name
      t.string :photo
      t.string :lease
      t.integer :rent
      t.integer :rooms
      t.integer :area
      t.date :lease_expiration

      t.timestamps
    end
  end
end

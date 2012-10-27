class AddIssuesToApartment < ActiveRecord::Migration
  def change
    add_column :issues, :apartment_id, :integer
  end
end

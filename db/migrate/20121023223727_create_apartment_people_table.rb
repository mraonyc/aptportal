class CreateApartmentPeopleTable < ActiveRecord::Migration
  def change 
  	create_table :apartments_people, :id => false do |t|
  		t.integer :apartment_id
  		t.integer :person_id
  	end
  end
end

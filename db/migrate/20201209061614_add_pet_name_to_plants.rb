class AddPetNameToPlants < ActiveRecord::Migration[6.0]
  def change
    add_column :plants, :pet_name, :string
  end
end

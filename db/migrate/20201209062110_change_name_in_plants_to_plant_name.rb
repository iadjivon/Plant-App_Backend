class ChangeNameInPlantsToPlantName < ActiveRecord::Migration[6.0]
  def change
    rename_column :plants, :name, :plant_name
  end
end

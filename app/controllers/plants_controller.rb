class PlantsController < ApplicationController
    def index
        render json: Plant.all
    end 

    def show 
        render json: Plant.find(params[:id])
    end

    def create 
        plant = Plant.new(plant_params)

        if plant.save
            render(status: 201, json: {plant: plant})
        else 
            render(staus: 422, json: {song: song})
        end
    end 

    def update
        plant = Plant.find(params[:id])
        plant.update(plant_params)
        render(json: {plant: plant})
    end 

    def destroy
        plant =Plant.destroy(params[:id])
        render(status: 204)
    end 


    private 
    def plant_params
        params.required(:plant).permit(:plant_name, :description, :image, :pet_name)
    end
end 
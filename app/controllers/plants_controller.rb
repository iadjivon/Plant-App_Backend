class PlantsController < ApplicationController
    def index
        render json: Plant.all
    end 

    def show 
        render json: Plant.find(params[:id])
    end

    def create 
    end 

    private 
    def plant_params
        params.required(:plant).permit(:plant_name, :description, :image, :pet_name)
    end
end 
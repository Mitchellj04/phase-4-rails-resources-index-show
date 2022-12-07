class BirdsController < ApplicationController

    def index 
        birds = Bird.all 
        render json: birds 
    end

    def show 
        birds = Bird.find_by(id: params[:id])
        if birds 
        render json: birds, status: :ok
        else 
        render json: {error: "no bird was found"}, status: :not_found
        end
    end

end

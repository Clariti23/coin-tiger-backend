class FavoritesController < ApplicationController
    skip_before_action :authorized, only: [:create, :index, :destroy]
    def index 
        favorites = Favorite.all 
        render json: favorites
    end

    def destroy
        puts "---------destroy method hit----------"
        # binding.pry
        favorite = Favorite.find(params[:id])
        puts '---------favorite record found'
        favorite.destroy
        puts '----------favorite record destroyed-------'
    end

    def show 
        favorite = Favorite.find(params[:id])
        render json: favorite
    end

    def create 
        favorite = Favorite.create(favorite_params)
            if favorite.valid?
                render json: favorite 
            else
                render json: { error: 'failed to create favorite'}, status: :not_accepted
            end
    end

    

    private 

    def favorite_params
        params.require(:favorite).permit(:symbol, :user_id, :coin_gecko_id)
    end
end

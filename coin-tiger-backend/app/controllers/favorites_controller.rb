class FavoritesController < ApplicationController
    skip_before_action :authorized, only: [:create, :index]
    def index 
        favorites = Favorite.all 
        render json: favorites
    end

    def show 
        favorite = Favorite.find(params[:id])
        render json: favorite
    end

    def create 
        favorite = Favorte.create(favorite_params)
    end

    def destroy
        favorite = Favorites.find(params[:id])
        favorite.destroy
    end

    private 

    def favorite_params
        params.require(:favorite).permit(:apiId, :name, :symbol, :user_id)
    end
end

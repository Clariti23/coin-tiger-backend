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
        favorite = Favorite.create(favorite_params)
            if favorite.valid?
                render json: favorite 
            else
                render json: { error: 'failed to create favorite'}, status: :not_accepted
            end
    end

    def destroy
        favorite = Favorites.find(params[:id])
        favorite.destroy
    end

    private 

    def favorite_params
        params.require(:favorite).permit(:symbol, :user_id)
    end
end

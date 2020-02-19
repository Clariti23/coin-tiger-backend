class BasketsController < ApplicationController
    skip_before_action :authorized
    def index 
        baskets = Basket.all 
        render json: baskets 
    end

    def show 
        basket = Basket.find(params[:id])
        render json: basket
    end

    def create
        # puts "new pry -------------==========="
        # binding.pry
        basket = Basket.create(basket_params)
        puts basket
    end

    private 
    def basket_params
        params.require(:basket).permit(:user_id, :name, :initialBasketValue, :indexDate, :coinOne, :coin_1_q, :coinOneId, :coinTwo, :coin_2_q, :coinTwoId, :coinThree, :coin_3_q, :coinThreeId,  :coinFour, :coin_4_q, :coinFourId,
        :coinFive, :coin_5_q, :coinFiveId )
    end
end

class Owner::PricesController < ApplicationController
    before_action :authenticate_user!
    before_action :set_price, only: [:show, :update, :destroy]


        #GET price
        def index
            @prices=current_user.prices
            json_response(@prices)
        end

        def create
            @price= current_user.prices.create!(price_params)
            
            json_response(@price, :created)

        end

        def show
            json_response(@price)
        end

        def destroy
            @price.destroy
            head :no_content
        end

        def price_params
            params.require(:price).permit(:name,:amount)
        end

        def set_price
            @price= Price.find(params[:id])
        end
end

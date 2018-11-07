class Owner::AvailabilitiesController < ApplicationController
    before_action :authenticate_user!
    before_action :set_availability, only: [:show, :update, :destroy]


        #GET availability
        def index
            @availabilities=Availability.where(court_id: params[:court_id])
            json_response(@availabilities)
        end

        def create
            @availability= Availability.create!(availability_params)
            
            json_response(@availability, :created)

        end

        def show
            json_response(@availability)
        end

        def destroy
            @availability.destroy
            head :no_content
        end

        def availability_params
            params.require(:availability).permit(:start,:end,:price_id,:court_id)
        end

        def by_court_or_price
            params[:court_id] || params[:price_id]
        end
        def set_availability
            @availability= Availability.find(by_court_or_price)
        end
end

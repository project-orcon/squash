class Owner::CourtsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_court, only: [:show, :update, :destroy]


        #GET court
        def index
            @courts=current_user.courts
            json_response(@courts)
        end

        def create
            
            @court= Court.create!(court_params)
            json_response(@court, :created)

        end

        def update
            @court.update(court_params)
            json_response(@court)
        end

        def show
            json_response(@court)
        end

        def destroy
            @court.destroy
            head :no_content
        end

        def court_params
            params.require(:court).permit(:name,:description,:club_id)
        end

        def set_court
            @court= Court.find(params[:id])
        end
end

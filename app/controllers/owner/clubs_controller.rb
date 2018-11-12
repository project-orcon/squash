
class Owner::ClubsController < ApplicationController
    
    before_action :authenticate_user!
    before_action :set_club, only: [:show, :update, :destroy]


        #GET club
        def index
            @clubs=current_user.clubs
            json_response(@clubs)
        end

        def create
            @club= current_user.clubs.create!(club_params)
            json_response(@club, :created)

        end

        def update
            @club.update!(club_params);
            json_response(@club);
        end

        def show
            json_response(@club)
        end

        def destroy
            @club.destroy
            head :no_content
        end

        def club_params
            params.require(:club).permit(:name,:description)
        end

        def set_club
            @club= Club.find(params[:id])
        end
end



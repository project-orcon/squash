class Owner::BookingsController < ApplicationController

        before_action :authenticate_user!
        before_action :set_booking, only: [:show, :update, :destroy]
    
    
            #GET booking
            def index
                @bookings=Club.find_by(id: params[:club_id]).bookings
                json_response(@bookings)
            end
    
=begin
            def create
                @booking= current_user.bookings.create!(booking_params)
                
                json_response(@booking, :created)
    
            end
    
            def show
                json_response(@booking)
            end
    
            def destroy
                @booking.destroy
                head :no_content
            end
    
            def booking_params
                params.require(:booking).permit(:name,:amount)
            end
    
            def set_booking
                @booking= Booking.find(params[:id])
            end

=end
    end
    


class BookingsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_court
    before_action :set_court_booking, only: [:show, :update, :destroy]
  
    # GET /courts/:court_id/bookings
    def index
      json_response(@court.bookings)
    end
  
    # GET /courts/:court_id/bookings/:id
    def show
      json_response(@booking)
    end
  
    # POST /courts/:court_id/bookings
    def create
      @court.bookings.create!(booking_params)
      json_response(@court, :created)
    end
  
    # PUT /courts/:court_id/bookings/:id
    def update
      @booking.update(booking_params)
      head :no_content
    end
  
    # DELETE /courts/:court_id/bookings/:id
    def destroy
      @booking.destroy
      head :no_content
    end
  
    private
  
    def booking_params
      params.permit(:start,:end,:court_id,:user_id)
    end
  
    def set_court
      @court = Court.find(params[:court_id])
    end
  
    def set_court_booking
      @booking = @court.bookings.find_by!(id: params[:id]) if @court
    end
    
  
  
end

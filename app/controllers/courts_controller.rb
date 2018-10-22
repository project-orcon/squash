    # app/controllers/Courts_controller.rb
class CourtsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_court, only: [:show, :update, :destroy]
    

  
    # GET /Courts
    def index
      @Courts = Court.all
      json_response(@Courts)
    end
  
    # POST /Courts
    def create
      @Court = Court.create!(court_params)
      json_response(@Court, :created)
    end
  
    # GET /Courts/:id
    def show
      json_response(@Court)
    end
  
    # PUT /Courts/:id
    def update
      @Court.update(court_params)
      head :no_content
    end
  
    # DELETE /Courts/:id
    def destroy
      @Court.destroy
      head :no_content
    end
  
    private
  
    def court_params
      # whitelist params
      params.permit("number")
    end
  
    def set_court
      @Court = Court.find(params[:id])
    end
  end


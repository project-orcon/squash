    # app/controllers/Courts_controller.rb
class CourtsController < ApplicationController
    before_action :set_Court, only: [:show, :update, :destroy]
  
    # GET /Courts
    def index
      @Courts = Court.all
      json_response(@Courts)
    end
  
    # POST /Courts
    def create
      @Court = Court.create!(Court_params)
      json_response(@Court, :created)
    end
  
    # GET /Courts/:id
    def show
      json_response(@Court)
    end
  
    # PUT /Courts/:id
    def update
      @Court.update(Court_params)
      head :no_content
    end
  
    # DELETE /Courts/:id
    def destroy
      @Court.destroy
      head :no_content
    end
  
    private
  
    def Court_params
      # whitelist params
      params.permit(:title, :created_by)
    end
  
    def set_Court
      @Court = Court.find(params[:id])
    end
  end


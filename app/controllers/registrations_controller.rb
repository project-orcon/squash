
class RegistrationsController < Devise::RegistrationsController
        respond_to :json
        before_action :configure_permitted_parameters

        def create
        puts sign_up_params
          build_resource(sign_up_params)
      
          resource.save
          json_response(resource)
        end

        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up, keys: [:email,:password,:first_name,:last_name,:type])
          end
        
      end


# app/controllers/concerns/response.rb
module Response
    def json_response(object, status = :ok)
      render json: object, status: status
    end

    def render_resource(resource)
        render json: resource
    end
  
  
  end
  
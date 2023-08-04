class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordInvalid, with: :error_response
  rescue_from ActiveRecord::RecordNotFound, with: :error_response


  private 

  def error_response(exception)
    render json: ErrorSerializer.serialize(exception), status: 404
  end
end

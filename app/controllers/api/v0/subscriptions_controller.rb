class Api::V0::SubscriptionsController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :error_response
  rescue_from ActiveRecord::RecordNotFound, with: :error_response
  
  def create
    sub = SubscriptionFacade.new.create_subscription(params[:user_id], params[:tea_id], params[:frequency])
    render json: SubscriptionSerializer.new(sub)
  end


  private 

  def error_response(exception)
    render json: ErrorSerializer.serialize(exception), status: 404
  end
end
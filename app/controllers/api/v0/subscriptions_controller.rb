class Api::V0::SubscriptionsController < ApplicationController
  
  def create
    sub = SubscriptionFacade.new.create_subscription(params[:customer_id], params[:tea_id], params[:frequency])
    render json: SubscriptionSerializer.new(sub)
  end

  def update
    sub = Subscription.find_by(params[:customer_id], params[:tea_id])
    SubscriptionFacade.new.cancel_subscription(sub)
    render json: SubscriptionSerializer.new(sub) 
  end
end
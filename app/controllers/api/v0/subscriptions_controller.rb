class Api::V0::SubscriptionsController < ApplicationController
  def create
    tea = SubscriptionFacade.new.create_subscription(params[:user_id], params[:tea_id], params[:frequency])
  end
end
class Api::V0::CustomersController < ApplicationController
  def index
    subs = Subscription.where(customer: params[:customer_id])
    render json: SubscriptionSerializer.new(subs)
  end
end
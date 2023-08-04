class Api::V0::CustomersController < ApplicationController
  def index
    subs = Subscription.where(user: params[:user_id])
  end
end
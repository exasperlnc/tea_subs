Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v0 do
      get '/customers', to: 'customers#index'
      post '/subscriptions', to: 'subscriptions#create'
      patch '/subscriptions', to: 'subscriptions#update'
    end
  end
end

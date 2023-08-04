require 'rails_helper'

RSpec.describe 'Subscription Creation Endpoint' do
  before :each do
    @t1 = Tea.create!(
      title: "Tea One",
      description: "The first Tea", 
      temperature: 50, 
      brew_time: 200 )
    @t2 = Tea.create!(
      title: "Tea Two",
      description: "The Second Tea", 
      temperature: 60, 
      brew_time: 120 )
    @c1 = Customer.create!(
      first_name: "Customer",
      last_name: "One", 
      email: "customer_one@email.com", 
      address: "123 Main St" )
    @c2 = Customer.create!(
      first_name: "Customer",
      last_name: "Two",
      email: "customer_two@email.com",
      address: "123 Center St")
  end

  it 'creates a subscription with valid params' do
    post "/api/v0/subscriptions?user_id=#{@c1.id}&tea_id=#{@t1.id}&frequency=1"

    expect(response).to be_successful
    expect(response.status).to eq(200)

    data = JSON.parse(response.body, symbolize_names: true)
    expect(data).to be_a(Hash)

    subscription = data[:data]
    expect(subscription).to have_key(:id)
    
    attributes = subscription[:attributes]
    expect(attributes).to have_key(:tea_id)
    expect(attributes).to have_key(:customer_id)
    expect(attributes).to have_key(:price)
    expect(attributes).to have_key(:frequency)
    expect(attributes).to have_key(:status)
    expect(attributes).to have_key(:title)
  end

  it 'fails to create a subscription with invalid params' do
    post "/api/v0/subscriptions"

    expect(response.status).to eq(404)
    
    data = JSON.parse(response.body, symbolize_names: true)
    expect(data[:errors].first[:message]).to eq("Couldn't find Tea without an ID")
  end
end
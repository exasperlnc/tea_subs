require 'rails_helper'

RSpec.describe Customer do
  before :each do
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
    describe "relationships" do
      it { should have_many :subscriptions }
      it { should have_many(:teas).through(:subscriptions) }
    end

    describe "validations" do
      it {should validate_presence_of :email }   
      it {should validate_presence_of :first_name }   
      it {should validate_presence_of :last_name }   
      it {should validate_presence_of :address }   
    end
end
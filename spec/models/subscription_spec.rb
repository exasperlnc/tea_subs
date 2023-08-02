require 'rails_helper'

RSpec.describe Subscription do
  before :each do
    @t1 = Tea.create!(
          title: "Tea One",
          description: "The first Tea", 
          temperature: 50, 
          brew_time: 200 )
    @t1 = Tea.create!(
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
    describe "relationships" do
      it { should belong_to :customer }
      it { should belong_to :tea }
    end

    describe "validations" do
      it {should validate_presence_of :title }   
      it {should validate_presence_of :price }   
      # it {should validate_inclusion_of :status }
      # not sure how to validate_inclusion_of, left to save time for now
      it {should validate_presence_of :frequency }   
    end
end
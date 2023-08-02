require 'rails_helper'

RSpec.describe Tea do
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
  end
    describe "relationships" do
      it { should have_many :subscriptions }
      it { should have_many(:customers).through(:subscriptions) }
    end

    describe "validations" do
      it {should validate_presence_of :title }   
      it {should validate_presence_of :description }   
      it {should validate_presence_of :temperature }   
      it {should validate_presence_of :brew_time }   
    end
end
class SubscriptionFacade
  def create_subscription(customer_id, tea_id, frequency)
    # @customer = Customer.find(customer_id)
    @tea = Tea.find(tea_id)
    @sub = Subscription.create(customer_id: customer_id, tea_id: tea_id, frequency: frequency, price: 5, status: true, title: @tea.title)
  end
end
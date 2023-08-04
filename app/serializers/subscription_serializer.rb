class SubscriptionSerializer
  include JSONAPI::Serializer

  set_type :subscription 
  set_id :id
  attributes :tea_id, :customer_id, :price, :frequency, :status, :title
end
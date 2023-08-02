class Subscription < ApplicationRecord
  belongs_to :tea
  belongs_to :customer
  
  validates_presence_of :title
  validates_presence_of :price
  validates_inclusion_of :status, in: [true, false]
  validates_presence_of :frequency
end
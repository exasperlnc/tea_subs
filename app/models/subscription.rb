class Subscription < ApplicationRecord
  belongs_to :tea
  belongs_to :customer
  
  validates_presence_of :title
  validates_presence_of :price
  validates_presence_of :status
  validates_presence_of :frequency
end
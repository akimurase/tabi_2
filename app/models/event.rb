class Event < ApplicationRecord
  attr_accessor :token
  validates :plan, :num, :option, :start_time, :name, :tel, :price, presence: true
end

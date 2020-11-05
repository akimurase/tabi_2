class Event < ApplicationRecord
  validates :plan, :number, :option, :start_time, :name, :tel, presence: true
end

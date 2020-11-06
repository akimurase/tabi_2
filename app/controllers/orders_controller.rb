class OrdersController < ApplicationController
  def index
    @event = Event.new(event_params)
    render :new if @event.invalid?
  end

  def create
  end

  
end

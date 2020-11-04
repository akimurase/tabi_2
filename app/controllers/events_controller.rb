class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def confirm
    @event = Event.new(event_params)
  end

  def create
  end

  def shwo
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def event_params
    params.require(:event).permit(:plan, :number, :option, :plan_day, :name, :tel)
  end


end

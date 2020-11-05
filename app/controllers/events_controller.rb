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
    @event = Event.new(event_params)
      @event.save!
      redirect_to @event
  end

  def show
    @event = Event.find_by(id: params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def event_params
    params.require(:event).permit(:plan, :number, :option, :start_time, :name, :tel)
  end


end

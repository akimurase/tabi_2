class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def confirm
    @event = Event.new(event_params)
    render :new if @event.invalid?
  end

  def create
    @event = Event.new(event_params)
    if params[:back]
      render :new
    elsif @event.save!
      redirect_to @event
    else
      render :new
    end
    # render :new and return if params[:back] || !@event.save #この記述は上と一緒
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

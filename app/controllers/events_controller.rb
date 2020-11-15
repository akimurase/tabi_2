class EventsController < ApplicationController

  before_action :search_event, only: [:index, :search]

  def index
    @events = Event.all
    set_event_column
  end

  def new
    @event = Event.new
  end

  def confirm
    @event = Event.new(event_params)
    render :new if @event.invalid?
    # if @event.invalid? #上と同義
    #   render :new
    # end
  end

  def create
    @event = Event.new(event_params)
    if params[:back]
      render :new
    else pay_event && @event.save!
      redirect_to @event
    end
    # render :new and return if params[:back] || !@event.save #この記述は上と一緒
  end

  def show
    @event = Event.find_by(id: params[:id])
  end
  
  def edit
    @event = Event.find(params[:id])
  end
  
  def update
    event = Event.find(params[:id])
    event.update(event_params)
  end
  
  def destroy
    event = Event.find(params[:id])
    event.destroy
  end

  def search
    # binding.pry
    @results = @e.result#.includes(:event)
  end
  

  private
  
  def event_params
    params.require(:event).permit(:plan_id, :num_id, :start_time, :name, :tel, :price, :token) #:option_id,
  end

  def search_event
    @e = Event.ransack(params[:q])
  end

  def set_event_column
    @event_name = Event.select("start_time").distinct
  end
  
  def pay_event
    Payjp.api_key = ENV['PAYJP_SECRET_KEY']
    Payjp::Charge.create(
      amount: event_params[:price], # event_paramsの中から:priceの値を取ってくる
      card: params[:token], # カードトークンはevent_paramsに入ってないからparamsの中から取ってくる。m
      currency: 'jpy'                 # 通貨の種類(日本円)
    )
  end
end

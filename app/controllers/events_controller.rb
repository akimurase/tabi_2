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
    # if @event.invalid? #上と同義
    #   render :new
    # end
  end

  # def create
  #   @event = Event.new(event_params)
  #   if params[:back]
  #     render :new
  #   elsif @event.save!
  #     redirect_to @event
  #   else
  #     render :new
  #   end
  #   # render :new and return if params[:back] || !@event.save #この記述は上と一緒
  # end
  def create
    @event = Event.new(event_params)
    if params[:back]
      render :new
    elsif @event.valid?
      pay_event
      @event.save!
      return redirect_to @event
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
    params.require(:event).permit(:plan, :num, :option, :start_time, :name, :tel, :price, :token)
  end

  def pay_event
    Payjp.api_key = ENV['PAYJP_SECRET_KEY'] # 環境変数に入れて呼び込む
    Payjp::Charge.create(
      amount: @event.price, # 商品の値段はitemテーブルのpriceカラムから持ってくる。indexに@itemの定義も必要
      card: event_params[:token], # カードトークン
      currency: 'jpy'                 # 通貨の種類(日本円)
    )
  end
end

Rails.application.routes.draw do
  # get 'orders/index'
  # get 'orders/create'
  root to: 'events#index'
  resources :orders, only: [:index, :create]
  resources :events do
    #決済機能
    # resources :orders, only: [:index, :create] #do
    #確認画面
      collection do
        post :confirm
      end
    #end
  end
end

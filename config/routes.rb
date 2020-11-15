Rails.application.routes.draw do
  root to: 'events#index'
  get 'events/search'
  resources :events do
    #確認画面
      collection do
        post :confirm
      end
      collection do
        get 'search_words'
      end
  end
end

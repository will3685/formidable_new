Rails.application.routes.draw do
  # get 'category_feeds/feed'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get ':user_id/feed', to: 'pages#feed', as: :feed

  resources :categories, only: [:show] do
    member do 
      get :salons
    end
  end
end

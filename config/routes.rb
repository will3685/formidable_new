Rails.application.routes.draw do
  # get 'category_feeds/feed'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/category_feed', to: 'category_feeds#feed', as: :feed
end

Rails.application.routes.draw do
  # get 'category_feeds/feed'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get ':user_id/feed', to: 'pages#feed', as: :feed
  get ':categoriaservico_id/agendamentos/new', to: 'agendamentos#new', as: :new

  # api routes 
  namespace :api do
    namespace :v1 do
      resources :salons, only: [:index, :show]
      resources :categories, only: [:index , :show] do
        member do
          get :salons
        end
      end
    end
  end

  resources :categories, only: [:index, :show] do
    member do 
      get :salons
    end
  end
  resources :salons, only: [:show]
  resources :agendamentos, only: [:create, :index]
end

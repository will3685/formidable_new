Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get ':user_id/feed', to: 'pages#feed', as: :feed
  get ':user_id/agendamentos', to: 'agendamentos#index', as: :agendamento

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
  resources :users do
    resources :salons, only: [:new, :create, :edit, :index]
  end

  resources :salons, only: [:show]
  
  resources :categoryservicos do
    resources :agendamentos, only: [:new , :create]
  end
end

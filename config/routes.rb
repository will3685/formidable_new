Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get ':user_id/feed', to: 'pages#feed', as: :feed

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

  resources :categories, only: [:index, :show, ] do
    member do 
      get :salons
    end
  end
  resources :users do
    resources :salons, except: [:show] 
    resources :agendamentos, only: [:index]
    resources :favoritos, only: [:index]
  end

  resources :salons, except: [:edit] do
    resources :salon_categories, only: [:new , :create, :destroy]
    resources :category_servicos, only: [:new, :create, :destroy, :index, :edit]
    resources :reviews, only: [:new, :create]
    resources :favoritos, only: [:create, :destroy]
  end
  
  resources :category_servicos, except: [:new, :create, :index, :edit, :destroy] do
    resources :agendamentos, only: [:new , :create]
  end
end

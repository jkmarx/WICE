Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  # devise_for :user, :path => "accounts"

  # root 'devise/sessions#new', as: :unauthenticated_root
#  devise_for :users
  devise_for :users, paths:'users', :controllers => { registrations: 'registrations' }
  resources :welcome, only: :index
  # root 'welcome#index'
  resources :about, only: :index
  # root 'about#index'

  resources :dashboard, only: [:index,:edit]
  authenticated :user do
  root "dashboard#index", as: :authenticated_root
    end
  unauthenticated do
      root 'welcome#index', as: :unauthenticated_root
  end


  # devise_scope :user do
  #   authenticated :user do
  #     root 'home#index', as: :authenticated_root
  #   end
  #   unauthenticated do
  #     root 'devise/sessions#new', as: :unauthenticated_root
  #   end
  # end

  resources :users, only: [:index], shallow:true do
    resources :recipes, only: [:new,:create,:index]
  end

  resources :recipes, only: [:show,:edit,:update,:destroy] do
      resources :comments, only: [:new,:create]
  end

  resources :comments, only: :destroy
  resources :allergies, only: :index
  resources :foodflags, only: :index
  resources :ingredientflags, only: :index

end

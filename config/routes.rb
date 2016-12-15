Rails.application.routes.draw do

  resources :owners

  resources :flats do
    collection do
      get 'top' => "flats#top"
    end
    member do
      get 'owner' => "flats#owner"
    end
    resources :reviews, only: [:new, :create]
  end

  namespace :admin do
    resources :flats, only: [:index]
  end

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

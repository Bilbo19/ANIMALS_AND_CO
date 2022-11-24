Rails.application.routes.draw do
  resources :flats
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :animals do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index, :edit, :show, :update]
end

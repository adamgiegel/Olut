Rails.application.routes.draw do
  resources :locales
  resources :routers
  resources :beer_locations
  resources :locations
  resources :beers
  resources :users
  resources :ratings
  resources :user_locations
  # get '/search', to: "search#new"
  # post '/search/create', to: "search#create"
  get '/search', to: "beers#search"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :places, except: [:update, :edit, :destroy]
root 'places#index'
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'restaurants#index'

  # # List all restaurants
  # get 'restaurants', to: 'restaurants#index', as: :restaurants

  # # Get the new restaurant form
  # get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  # # The route which will receive the submission of the form
  # post 'restaurants', to: 'restaurants#create'

  # # Get the existing restaurant form
  # get 'restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  # # The route which will receive the submission of the form
  # patch 'restaurants/:id', to: 'restaurants#update'

  # # List one restaurant
  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  # delete 'restaurants/:id', to: 'restaurants#destroy' # repeats the prefix from above

  resources :restaurants

end

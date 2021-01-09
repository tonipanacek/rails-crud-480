Rails.application.routes.draw do
  # CRUD actions:
  # namespacing our models is very important in our routes

  # verb 'path', to: 'controller#action'

  # see all restaurants:
  get 'restaurants', to: 'restaurants#index'

  # create new restaurant: -> 2 part action
  # part 1: show the user a form
  get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  # part 2: send data to the backend
  post 'restaurants', to: 'restaurants#create'

  # see one restaurant:
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  # destroy a restaurant
  delete 'restaurants/:id', to: 'restaurants#destroy'

  # updating an existing restaurant -> 2 part action
  # part 1: give the user a form
  get 'restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  # part 2: send data to the backend
  patch 'restaurants/:id', to: 'restaurants#update'
end

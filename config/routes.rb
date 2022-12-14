Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'articles#index'
  get 'about', to:'pages#about'
  resources :articles
  get 'signup', to:'users#new'
  resources :users, except: [:new]
  # We can use the below line to show only the particular route.
  #, only: [:show, :index, :new, :create, :edit, :update, :destroy]
end

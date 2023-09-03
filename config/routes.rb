Rails.application.routes.draw do
 
root 'main#index' # Set the main page as the root

get 'trevels', to: 'trevels#index'
get 'about', to: 'about#index'
get 'contacts', to: 'contacts#index'
get 'registration', to: 'registration#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

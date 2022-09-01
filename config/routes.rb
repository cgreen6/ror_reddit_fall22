Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # root - only rails, define the home page, but don't need since we are using react.
  # Defines the root path route ("/")
  # root "articles#index"
  # routes - a way to have react communicate / do CRUD actions to rails, talk from front to back
  # backend as api, all of our controllers are in a 
  # this will point from react to somewhere in the controller.

  namespace :api do
    # this is where all of our routes will be
  
    # manually
    # # http verb, url, to: 'controller#action', as: 'nickname'
    # get '/subs' to: 'subs#index'
    # get '/sub/:id', to: 'subs#show'
    # post '/subs', to: 'subs#create'
    # put '/sub/:id', to: 'subs#update'
    # delete '/sub' to: 'subs#destroy'
    #custom routes - outside of the crud actions
      #
    #rails g way
#     # resources :name of controller
# get '/url', to: 'controller'
# get '/ordered-subs', to: 'subs#osubs'
#handles the main CRUD actions
resources :subs

# to view the routes in terminal: rails routes
# recommended: first run your server - bundle exec rails s -p 3001
# go to the url of http://localhost:3001/rails/info/routes

  end
end

Rails.application.routes.draw do
  # root - only rails, define the home page , but don't need since 
  # we are using react 

  # routes - a way to have react communicate / do 
  #   CRUD action to rails, talk from front to back
  # backend as api, all of our controllers are in api folder 
  # this will point from react to somehwhere  in the controller
  
  namespace :api do
    # this is where all of our routes will be 

    # manually 
    # http verb, url, to: 'controller#action', as: 'nickname'
    # get '/subs', to: 'subs#index'
    # get '/sub/:id', to: 'subs#show'
    # post '/subs', to: 'subs#create'
    # put '/sub/:id', to: 'subs#update'
    # delete '/sub/:id', to: 'subs#destroy'
    # :id - place holder for the actual id value 
      # custom routes - out side of the crud actions 
      # get '/url', to: 'controller#action'
      # get '/ordered-subs', to: 'subs#osubs'

    # rails g way 
    # resources :name ofcontroller 
    # handles the main CRUD actions 
    resources :subs do 
      resources :topics
    end
    #  only do two level deep 

    resources :topics, except: [:index, :show, :create, :update, :destroy] do 
      resources :comments 
    end

    # resources :comments, except: [:index, :show, :create, :update, :destroy] do 
    #   resources :likes 
    # end

    # DONT DO
    # resources :subs do 
    #   resources :topics do 
    #     resources :comments do
    #       resources :likes
    #     end
    #   end
    # end

    # model with a parent and child then we need to 
    # do a a do block 
    # but only do two level deep
    # resources :parent1 do 
    #   resources :child2
    # end

    # resources :child2 do 
    #   resources :child3
    # end

    # to view the routes 
  # in terminal - bundle exec rails routes 
  # recommends - first run your server - 
    # bundle exec rails s -p 3001
    # go to the url of http://localhost:3001/rails/info/routes
    
  end

end
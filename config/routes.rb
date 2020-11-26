Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  get '/about', to: "pages#about"
  get '/engineer', to: "pages#engineer"
  get '/admin', to: "pages#admin"
  get '/index', to: "pages#index"
  get '/signupc', to: "authentication#signupc"

  #sign in Customer
  get '/signinc', to: "authentication#signinc"
  post '/sessions' => "sessions#create"
  delete '/sessions' => "sessions#destroy"
   #sign up Customer
  post "/inspectionform" => "authentication#create"
  get "/inspectionform" => "pages#inspectionform"

  #Customer Dashboard & Checklist
  get "/custdashboard" => "authentication#custdashboard"
  get "/custchecklist" => "authentication#custchecklist"


  #Engineer Dashboard & Checklist
  get "/engdashboard" => "engineer#engdashboard"
  get "/engchecklist" => "engineer#engchecklist"

  #create project
  post "/custdashboard" => "project#create"

  #loggin out customers
  #delete "/loggedout" => "sessions#destroy"
  get "/sessions" => "sessions#destroy"
  #logged out engineers
  delete "/loggedoute" => "sessionsengineer#destroy"
  
  




  #sign in Engineer
  # get '/signine', to: "authentication#signine"
  # post '/sessions' => "sessions#createEngineer"
  # delete '/sessions' => "sessions#destroy"
  #sign in Engineer
  # post '/sessions' => "sessionsengineer#create"
  post '/sessionsengineer' => "sessionsengineer#create"
  # post '/index', to: "sessionsengineer#index"
  
   #signup Engineer
   get '/signupe', to: "engineer#signupe"
   post '/signine' => "engineer#create"
   get '/signine', to: "engineer#signine"


  #  get "/signupe" => "pages#signupe"

  # #signin Engineer
  
  # get '/inspectionform', to: "pages#inspectionform"





  


end

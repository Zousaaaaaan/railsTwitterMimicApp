Rails.application.routes.draw do

  get 'dms/index'
  post "likes/:post_id/create" => "likes#create"
  post "likes/:post_id/destroy" => "likes#destroy"

  post "followers/:user_id/create" => "followers#create"
  post "followers/:user_id/destroy" => "followers#destroy"


  post "users/:id/update" => "users#update"
  get "users/:id/edit" => "users#edit"
  post "users/create" => "users#create"
  get "signup" => "users#new"
  get "users/index" => "users#index"
  get "users/:id" => "users#show"
  post "login" => "users#login"
  post "logout" => "users#logout"
  get "login" => "users#login_form"


  get "users/:id/likes" => "users#likes"
  get "users/:id/follows" => "users#follows"
  get "users/:id/followers" => "users#followers"


  get "posts/top" => "posts#top"
  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#show"
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"
  get "posts/top" => "posts#top"


  get "/" => "home#top"
  get "about" => "home#about"


  get "dms/:user_id" => "dms#index"
  get "dms/:user_id/choice" => "dms#choice"
  get "dms/:user_id/show/:to_user_id" => "dms#show"
  post "dms/:to_user_id/create" => "dms#create"


end

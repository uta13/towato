Rails.application.routes.draw do
  post 'likes/:post_id/create' => 'likes#create'
  post 'likes/:post_id/destroy' => 'likes#destroy'
  get 'posts/index' => 'posts#index'
  get 'posts/new' => 'posts#new'
  get 'posts/:id' => 'posts#show'
  post 'posts/create' => 'posts#create'
  post 'posts/:id/update' => 'posts#update'
  get 'posts/:id/edit' => 'posts#edit'
  get 'login' => 'users#login_form'
  post 'users/login' => 'users#login'
  get '/logout' => 'users#logout'
  post 'users/:id/update' => "users#update"
  get "users/:id/edit" => "users#edit"
  post "users/create" => "users#create"

  get 'signup' => 'users#new'
  get "users/:id" => "users#show"


  get '/' => 'home#top'
  get '/index' => 'posts#index'

  get 'signup' => 'user#new'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

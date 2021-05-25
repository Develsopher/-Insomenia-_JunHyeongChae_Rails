Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  begin
    ActiveAdmin.routes(self)
  rescue StandardError
    ActiveAdmin::DatabaseHitDuringLoad
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_scope :users do
    post "token" => "users/refresh#create"
  end

  devise_for :users,
             path: "",
             path_names: {
               sign_in: "login",
               sign_out: "logout",
               registration: "signup"
             },
             controllers: {
               sessions: "users/sessions",
               registrations: "users/registrations"
             }
  resources :users
  
  resources :categories

  resources :items do
    resources :options, only: [:index, :create]
  end
  

  # resources :items
  get '/items/category/:id' => 'items#category_item'
  get '/items/:id' => 'items#eachindex'
  # get '/items' => 'items#index'
  # post '/items' => 'items#create'
  # get '/items/:id' => 'items#show'
  # put '/items/:id' => 'items#update'
  # delete '/itmes/:id' => 'items#destroy'
  # resources :categories
  # resources :items, only: [:index, :show] except:

  # resources :images do
  #   post :dropzone, on: :collection
  # end
end

Rails.application.routes.draw do
  devise_for :users
  root to: "groups#index"
  resources :groups do
    get "join" => "groups#join"
    delete "exit" => "groups#exit"
    post "invitation" => "groups#invitation"
    delete "cancel" => "groups#cancel"
    resources :items do
      collection do
        get 'search'
        get "shortage"
      end
      get "use" => "items#use"
      get "back" => "items#back"
    end
  end
  resources :notifications, only: :index
  resources :welcomes, only: :index
end

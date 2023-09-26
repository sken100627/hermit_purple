Rails.application.routes.draw do
  devise_for :users
  root to: "groups#index"
  resources :groups do
    get "join" => "groups#join"
    delete "exit" => "groups#exit"
    post "invitation" => "groups#invitation"
    resources :items do
      collection do
        get 'search'
      end
    end
  end
end

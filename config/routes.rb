Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Added following code as instructed by Treehouse Tutorial
  get "/pages/:page" => "pages#show"
  # Doesn't seem to work the way I want it to
  # get 'approve' => "requests#approve"
  root "pages#show", page: "welcome"
  resources :articles
  resources :requests
  #Rails Girls Tutorial puts this code here: root to: redirect('/welcome')
end

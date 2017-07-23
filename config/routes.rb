Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Added following code as instructed by Treehouse Tutorial
  get "/pages/:page" => "pages#show"
  root "pages#show", page: "welcome"
  #Rails Girls Tutorial puts this code here: root to: redirect('/welcome')
end

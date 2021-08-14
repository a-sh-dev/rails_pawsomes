Rails.application.routes.draw do
  resources :pets
  devise_for :users, controllers: { registrations: "users/registrations" }
  
  root to: "pages#home"
  
  # GET static pages
  get "/about", to: "pages#about", as: "about"
  get "/contact", to: "pages#contact", as: "contact"
  get "/account", to: "pages#account", as: "account"
  get "/pawlour", to: "pages#pawlour", as: "pawlour"

end

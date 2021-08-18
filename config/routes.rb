Rails.application.routes.draw do
  resources :pets
  devise_for :users, controllers: { registrations: "users/registrations" }
  
  post ":pet_id/support_pet", to: "supports#support_pet", as: :support_pet
  post ":pet_id/unsupport_pet", to: "supports#unsupport_pet", as: :unsupport_pet
  
  root to: "pages#home"
  
  # GET static pages
  get "/about", to: "pages#about", as: "about"
  get "/contact", to: "pages#contact", as: "contact"
  get "/account", to: "pages#account", as: "account"
  get "/my_pets", to: "pages#my_pets", as: "my_pets"

end

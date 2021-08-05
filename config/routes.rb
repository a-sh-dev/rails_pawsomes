Rails.application.routes.draw do
  devise_for :users
  
  root to: "pages#home"
  
  # GET static pages
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'account', to: 'pages#account'

end

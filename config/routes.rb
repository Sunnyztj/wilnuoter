Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'pages#index'

  resources :products
  resources :pages

  get 'contact' => 'pages#contact_us'

  post 'send_contact_query' => 'pages#send_contact_query'
end

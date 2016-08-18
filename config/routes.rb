Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'pages#index'

  get 'wine_list' => 'products#index'
  get 'product' => 'products#show'
end

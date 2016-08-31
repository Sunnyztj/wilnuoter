Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'pages#index'

  get  '/contact', to: 'contact_us#new', as: :contact
  post '/contact', to: 'contact_us#create'

  resources :products
  resources :pages
  resources :blogs

  get 'about' => 'pages#about_us'

  post 'send_contact_query' => 'pages#send_contact_query'
end

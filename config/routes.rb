Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: 'high_voltage/pages#show', id: 'landing'
  resources :arrangements, only: [:index, :show]
  get 'contact' => 'high_voltage/pages#show', id: 'contact'
  get 'flowers' => 'arrangements#index'
end

Rails.application.routes.draw do
  root to: 'high_voltage/pages#show', id: 'landing'
  resources :arrangements, only: [:index, :show]
  get 'contact' => 'high_voltage/pages#show', id: 'contact'
  get 'flowers' => 'arrangements#index'
end

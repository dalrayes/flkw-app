Rails.application.routes.draw do
  root to: 'high_voltage/pages#show', id: 'landing'
  resources :flowers, only: [:index, :show]
  get 'contact' => 'high_voltage/pages#show', id: 'contact'
end

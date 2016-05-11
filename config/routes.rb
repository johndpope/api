Rails.application.routes.draw do
  root to: 'index#index'

  resources :users
  mount Resque::Server => '/resque'
end

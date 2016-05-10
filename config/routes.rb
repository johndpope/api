Rails.application.routes.draw do
  resources :users
  mount Resque::Server => '/resque'
end

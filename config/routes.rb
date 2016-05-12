Rails.application.routes.draw do
  root to: 'index#index'

  resources :users
  mount Resque::Server => '/resque'

  # Looks like this is a frontend route (e.g. i-have-a-room, how-it-works)
  # If it's not xhr redirect to / and pass url as param
  # Ignore xhr because frontend should know how backend routes
  # For security purposes only route GET requests
  not_xhr = Class.new do
    def matches?(req) !req.xhr? end
  end

  get '*url', to: redirect { |path_params, req|
    "?#{req.params.to_query}"
  }, constraints: not_xhr.new
end

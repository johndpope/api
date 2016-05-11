class IndexController < ApplicationController
  def index
    render(html: $redis.get('client:index:current-content') || 'No Content')
  end
end

class IndexController < ApplicationController
  def index
    render(html: current_index.html_safe)
  end

  private
    def current_index
      $redis.get('client:index:current-content') || 'No content'
    end
end

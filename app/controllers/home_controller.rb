class HomeController < ApplicationController
  caches_page :index
  before_action :test, except: :index
  caches_action :show, expires_in: 1.minutes

  # Page caching
  def index
    @time = Time.now
  end

  # Action caching
  def show
    binding.pry
    @time = Time.now
  end

  private
  def test
    # Check user authentication
  end

end

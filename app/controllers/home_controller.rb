class HomeController < ApplicationController
  def home
    redirect_to users_url
  end
end

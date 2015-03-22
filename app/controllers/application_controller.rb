class ApplicationController < ActionController::Base
  protect_from_forgery
  def default_url_options
    {:name=>session[:user] , :status=>"Active" }
  end 
end

class HomeController < ApplicationController
  def index
    session[:user] = "Anuj"
  end
  
  def status
   head :bad_request
   end
   
   def test
    
   end 
end

class HomeController < ApplicationController
  def index
    
  end
  def status
  debugger
  flash[:user]= params[:name] unless params[:name].nil? 
  puts "ddvd"
  end
end

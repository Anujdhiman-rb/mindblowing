class HomeController < ApplicationController
  def index
    session[:user] = "Anuj Dhiman"
    cookies[:password] = "auth"
    flash[ :user] = "Anuj"
    flash[ :notice] = "hi"
    flash.keep(:user)
    redirect_to :action=>:status
  end
  def status
  debugger
  flash[:user]= params[:name] unless params[:name].nil? 
  puts "ddvd"
  end
end

class HomeController < ApplicationController
  def index
    session[:user] = "Anuj"
    @ps = Post.all
    @user  = User.find 1
  end
  
  def status
    redirect_to home_test_path
    
    puts "jgghg"
    puts "jgghg"
  end
   
   def test
    puts "jgghg"
    puts "jgghg"
   end 
   
   def upload
   u = User.find 1
   u.avatar = params[:picture]
   u.save!
   u.avatar.url # => '/url/to/file.png'
   u.avatar.current_path # => 'path/to/file.png'
   u.avatar_identifier
   redirect_to home_index_path , :notice => "Uploaded successfully !"
   end
end

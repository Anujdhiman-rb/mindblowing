class Comment < ActiveRecord::Base
  belongs_to :post
  attr_accessible :body, :commenter
  validates :body , :commenter , :presence=>true
  after_destroy :destroy_comment 
  def destroy_comment
    puts "Comments associated with it also has been destroyed !"
  end 
end

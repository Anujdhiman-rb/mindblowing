class Post < ActiveRecord::Base
  attr_accessible :context, :name, :title
  validates_presence_of :name , :title
  validates_length_of :context , :minimum=>10 , :maximum=> 100
  validates_length_of :title , :minimum=>5 
  has_many  :comments , :dependent=>:destroy
  has_many :tags 
  validates_associated :comments
  accepts_nested_attributes_for :tags  , :allow_destroy => :true , 
  :reject_if => Proc.new{|attr| attr.all? { |k,v| v.blank? }}
  
end

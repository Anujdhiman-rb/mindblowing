class User < ActiveRecord::Base
  attr_accessible  :designation, :name
  mount_uploader :avatar, AvatarUploader
end

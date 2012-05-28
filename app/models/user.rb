class User < ActiveRecord::Base
  include ActiveCrop
  
  has_attached_file :avatar

  active_crop :show_preview => {:width=>100,:height=>100}
  
end

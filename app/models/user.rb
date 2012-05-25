class User < ActiveRecord::Base
  include ActiveJcrop
  
  has_attached_file :avatar

  active_jcrop :show_preview => true
  
end

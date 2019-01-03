class Profile < ApplicationRecord
  has_many :helpwanteds, :dependent => :destroy
  has_many :applications, :dependent => :destroy


  
end

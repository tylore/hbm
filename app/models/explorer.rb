class Explorer < ActiveRecord::Base
  has_secure_password

  has_many :adventures
end

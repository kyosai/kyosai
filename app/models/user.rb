class User < ActiveRecord::Base
  attr_accessible :email, :name, :organization_id
end

class User < ActiveRecord::Base
  has_and_belongs_to_many :project_roles
  attr_accessible :email, :name, :organization_id
  has_and_belongs_to_many :projects
end

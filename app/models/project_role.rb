class ProjectRole < ActiveRecord::Base
  has_and_belongs_to_many :project_resource_roles
  has_and_belongs_to_many :users
  attr_accessible :name, :project_id
  belongs_to :project
  has_many :project_resources , :through => :project_resource_roles
end

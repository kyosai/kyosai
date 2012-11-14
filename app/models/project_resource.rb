class ProjectResource < ActiveRecord::Base
  attr_accessible :name, :project_id
  belongs_to :project
  has_many :project_resource_roles
end

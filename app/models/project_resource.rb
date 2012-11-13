class ProjectResource < ActiveRecord::Base
  attr_accessible :description, :identifier, :name, :project_id, :third_party
  belongs_to :project
  
end

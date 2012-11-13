class ProjectResource < ActiveRecord::Base
  attr_accessible :description, :name, :project_id
end

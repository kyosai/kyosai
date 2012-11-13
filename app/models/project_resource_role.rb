class ProjectResourceRole < ActiveRecord::Base
  attr_accessible :delete, :edit, :manage, :project_id, :project_resource_id, :project_role_id, :read
end

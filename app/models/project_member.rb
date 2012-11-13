class ProjectMember < ActiveRecord::Base
  attr_accessible :project_id, :project_role_id, :project_roles_mask, :user_id
end

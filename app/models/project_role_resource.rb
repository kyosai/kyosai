class ProjectRoleResource < ActiveRecord::Base
  attr_accessible :able_to_create, :able_to_delete, :able_to_edit, :able_to_manage, :able_to_read, :project_resource_id, :project_role_id
  belongs_to :project_role
  belongs_to :project_resource
end

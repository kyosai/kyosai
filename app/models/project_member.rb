class ProjectMember < ActiveRecord::Base
  attr_accessible :project_id, :project_role_id, :user_id
  belongs_to :project
  belongs_to :user
  belongs_to :project_role
end

class ProjectResourceRole < ActiveRecord::Base
  has_and_belongs_to_many :project_roles
  attr_accessible :able_to_create, :able_to_delete, :able_to_edit, :able_to_manage, :able_to_read, :project_resource_id
  belongs_to :project_resource
  has_one :project , :through => :project_resource
end

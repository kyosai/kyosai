class Project < ActiveRecord::Base
  attr_accessible :initiator_id, :name, :organization_id
  has_and_belongs_to_many :users
  belongs_to :initiator , :class_name => 'User', :foreign_key => :initiator_id
  has_many :project_resources
  has_many :project_resource_roles , :through => :project_resources
  has_many :project_roles
end

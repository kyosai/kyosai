class ProjectRole < ActiveRecord::Base
  attr_accessible :description, :name, :project_id
  belongs_to :project
  has_many :project_members , :through => :project
  has_many :users, :through => :project_members
end

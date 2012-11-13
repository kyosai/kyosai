class Project < ActiveRecord::Base
  attr_accessible :description, :initiator_id, :name, :organization_id
  belongs_to :organization
  belongs_to :initiator , :class_name => "User", :foreign_key => :initiator_id
end

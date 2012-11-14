class Project < ActiveRecord::Base
  attr_accessible :initiator_id, :name, :organization_id
  has_and_belongs_to_many :users
end

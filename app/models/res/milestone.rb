class Res::Milestone < ActiveRecord::Base
  attr_accessible :complete, :complete_at, :creator_id, :description, :due_time, :name, :project_id
  belongs_to :project
  belongs_to :creator , :class_name => 'User', :foreign_key => :creator_id
end

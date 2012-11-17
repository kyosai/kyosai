class Res::History < ActiveRecord::Base
  attr_accessible :action, :description, :resource_id, :resource_type, :user_id
  belongs_to :resourceable, :polymorphic => true
end

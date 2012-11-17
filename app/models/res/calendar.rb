class Res::Calendar < ActiveRecord::Base
  attr_accessible :message, :project_id, :time_at, :user_id
end

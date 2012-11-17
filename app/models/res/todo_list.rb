class Res::TodoList < ActiveRecord::Base
  attr_accessible :due_time, :message, :project_id, :title, :user_id
end

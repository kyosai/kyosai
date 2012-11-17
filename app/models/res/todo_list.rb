class Res::TodoList < ActiveRecord::Base
  attr_accessible :due_time, :message, :project_id, :title, :user_id
  has_many :histories , :as => :resourceable
  has_many :comments , :as => :resourceable
end

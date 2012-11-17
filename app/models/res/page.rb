class Res::Page < ActiveRecord::Base
  attr_accessible :content, :project_id, :title
end

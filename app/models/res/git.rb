class Res::Git < ActiveRecord::Base
  attr_accessible :description, :name, :project_id, :url
end

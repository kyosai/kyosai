class Res::Comment < ActiveRecord::Base
  attr_accessible :message, :reply_to, :res_id, :res_identifier, :user_id
end

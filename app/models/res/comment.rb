class Res::Comment < ActiveRecord::Base
  attr_accessible :message, :reply_to, :res_id, :res_identifier, :user_id, :resourceable_id, :resourceable_type
  belongs_to :resourceable , :polymorphic => true
end

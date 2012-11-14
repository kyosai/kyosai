class Organization < ActiveRecord::Base
  attr_accessible :initiator_id, :name
  belongs_to :initiator , :class_name => 'User', :foreign_key => :initiator_id
  has_many :members , :class_name => "User"
end

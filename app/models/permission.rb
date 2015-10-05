class Permission < ActiveRecord::Base

  validates_uniqueness_of :role_id, :scope => :application_class_id

  belongs_to :role
  belongs_to :application_class

end

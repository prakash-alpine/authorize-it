class ApplicationScope < ActiveRecord::Base

  validates_presence_of name
  validates_format_of   name, parent_class_name,  :with => /\A[a-z0-9_-]\z/
  validates_length_of   name, parent_class_name, :maximum => 256

  belongs_to :group
  has_many   :application_objects

end

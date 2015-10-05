class ApplicationObject < ActiveRecord::Base

  validates_presence_of name
  validates_format_of   name, :with => /\A[a-z0-9_-]\z/
  validates_length_of   name, :maximum => 256

  belongs_to :user
  belongs_to :application_scope
  belongs_to :application_class

end

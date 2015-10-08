class Group < ActiveRecord::Base
  validates_presence_of :name
  validates_format_of :name, :with => /\A[a-z0-9_-]{4,25}\z/
  validates_length_of :name, :maximum => 25
  validates_length_of :description, :maximum => 256
  validates_uniqueness_of :name

  has_and_belongs_to_many :users, -> { uniq }
  has_one :application_scope

  # Delete HABTM association objects
  before_destroy {users.clear}

end

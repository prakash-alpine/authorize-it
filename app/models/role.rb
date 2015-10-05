class Role < ActiveRecord::Base

  validates_presence_of :name
  validates_format_of :name, :with => /\A[a-z0-9_-]{8,25}\z/
  validates_length_of :name, :maximum => 25, :minimum => 8
  validates_length_of :description, :maximum => 256
  validates_uniqueness_of :name

  has_many :permissions
  validates_associated :permissions

  has_and_belongs_to_many :users, -> { uniq }
  has_and_belongs_to_many :groups, -> { uniq }

end


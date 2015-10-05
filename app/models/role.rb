class Role < ActiveRecord::Base

  validates_presence_of :name
  #validates_format_of :name, :with => /\A[a-z0-9_-]{4,25}\z/, :message => 'can not contain special characters'
  validates_length_of :name, :maximum => 256, :message => 'must be less than 256 chars'
  validates_length_of :description, :maximum => 256
  validates_uniqueness_of :name, :message => 'must be unique'


  has_many :permissions
  validates_associated :permissions

  has_and_belongs_to_many :users, -> { uniq }
  has_and_belongs_to_many :groups, -> { uniq }

end


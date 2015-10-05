class User < ActiveRecord::Base
  validates_presence_of :username, :first_name, :last_name, :email
  validates_uniqueness_of :username, :case_sensitive => false, :allow_blank => false
  validates_uniqueness_of :email, :case_sensitive => false, :allow_blank => false
  validates_format_of :email, :with => /[\w\.-]+(\+[\w-]*)?@([\w-]+\.)+[\w-]+/
  validates_format_of :username, :with => /\A[a-z0-9_-]{8,25}\z/
  validates_length_of :username, :maximum => 25, :minimum => 8
  validates_length_of :first_name, :last_name, :email, :title, :department, :maximum => 256
  validates_length_of :notes, :maximum => 4096

  has_and_belongs_to_many :groups, -> { uniq }
  has_many :application_objects

end

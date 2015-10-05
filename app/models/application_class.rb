class ApplicationClass < ActiveRecord::Base

  has_many :permissions, :dependent => :destroy
  has_many :application_objects, dependent: :destroy
  has_many :operations, :dependent => :destroy

  # one way validation on associated objects.
  validates_associated :permissions
  validates_associated :operations

  def class_operations
    parray = []
    operations.order(:sequence).each do |operation|
      parray << operation.name.to_sym
    end
    parray
  end

end

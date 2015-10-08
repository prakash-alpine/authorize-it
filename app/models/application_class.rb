class ApplicationClass < ActiveRecord::Base

  validates_presence_of  :name, :message => 'Class name can not be empty'
#  validates_format_of :name, :with => /\A[A-Za-z0-9_-]{4,25}\z/, :message => 'Class name can not contain special chars'
  validates_length_of :name, :maximum => 255

  has_many :permissions, :dependent => :destroy
  has_many :application_objects, dependent: :destroy
  has_many :operations, :dependent => :destroy

  # one way validation on associated objects.
  validates_associated :permissions
  validates_associated :operations

  def class_operations
    ret = []
    operations.order(:sequence).each do |operation|
      ret << operation.name.to_sym
    end
    ret
  end

  def permissions_for(role_name)
    role = Role.find_by(:name => role_name)
    ret = Set.new
    if role == nil
      #raise exception
      return nil
    else
      perm_obj = role.permissions.where(:application_class_id => self.id).first
      if perm_obj == nil
        #raise exception
        return nil
      else
        operations = class_operations
        bits = perm_obj.permissions_mask
        bit_length = bits.size * 8
        bit_length.times do |i|
          ret.add(operations[i].to_sym) if bits[i] == 1
        end

      end

    end

    ret.to_a
  end

end

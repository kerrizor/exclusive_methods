require_relative 'exclusive_methods/version'

module ExclusiveMethods
  def exclusive_instance_methods
    instance_methods - superclass.instance_methods - instance_methods_from_modules
  end

  def exclusive_class_methods
    methods - superclass.methods - class_methods_from_modules
  end


  def instance_methods_from_modules
    included_modules.map { |mod| mod.instance_methods }.flatten.uniq
  end

  def class_methods_from_modules
    included_modules.map { |mod| mod.methods }.flatten.uniq
  end
end


class Object
  extend ExclusiveMethods
end
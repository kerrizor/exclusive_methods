require_relative 'exclusive_methods/version'

module ExclusiveMethods
  def exclusive_instance_methods
    instance_methods - superclass.instance_methods - instance_methods_from_modules
  end

  def exclusive_class_methods
    methods - superclass.methods - class_methods_from_modules
  end

  def instance_methods_from_modules
    methods_from_modules(:instance_methods)
  end

  def class_methods_from_modules
    methods_from_modules(:methods)
  end

  def methods_from_modules(method_type)
    included_modules.map(&method_type).flatten.uniq
  end
end


class Object
  extend ExclusiveMethods
end

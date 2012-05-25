module ActiveJcrop
  def self.included(base)
    base.extend ClassMethods
    base.instance_variable_set("@default_options", {})
  end

  module ClassMethods
    def active_jcrop(options)
      default_options.merge!(options)
    end

    def default_options
      @default_options
    end
  end
end

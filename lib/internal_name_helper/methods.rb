# if the model respond to "internal"
# Model#name
# Model#is_name?
# Model#is_not_name?
# will be defined

module InternalNameHelper
  module Methods
    def self.included(base)
      base.send(:include, InternalNameHelper::Helper)
      # pre-load all instances
      instances = base.all
      
      eigenclass = class << base
        self
      end
      
      eigenclass.class_eval do
        instances.each do |inst|
          method_name = inst.dashlized_internal_name
        
          define_method(method_name) do
            inst
          end
          
          public method_name
        end        
      end
      
      base.class_eval do
        instances.each do |inst|
          method_name = "is_" + inst.dashlized_internal_name + "?"
    
          define_method(method_name) do
            self.internal_name == inst.internal_name
          end
          
          public method_name
    
          method_name = "is_not_" + inst.dashlized_internal_name + "?"
          define_method(method_name) do
            self.internal_name != inst.internal_name
          end
          
          public method_name
        end        
      end
    end
  end
end
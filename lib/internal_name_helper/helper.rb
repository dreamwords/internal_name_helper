module InternalNameHelper
  module Helper
    def dashlized_internal_name
      internal_name.gsub(" ", "_").downcase
    end
  end
end
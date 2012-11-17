module Res
  def self.table_name_prefix
    'res_'
  end
  module Util
    
    def self.included(base)
      base.class_eval do
          
      end
    end
    module ClassMethods
      def name
      end
    end
    
  end
end

require "administrate/field/base"
require "rails"

module Administrate
  module Field
    class MultipleSelect < Administrate::Field::Select
      class Engine < ::Rails::Engine
      end

      rdef to_s
        data
      end

      def self.permitted_attribute(attr, _options = nil)
        { attr.to_s.to_sym => [] }
      end
    end
  end
end

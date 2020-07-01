# frozen_string_literal: true

module RouterExtensions
  module Partialize
    def draw(route_name)
      instance_eval(File.read(Rails.root.join('config/routes', "#{route_name}.rb")))
    end
  end
end

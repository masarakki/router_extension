# frozen_string_literal: true

require 'router_extensions/partialize'

module RouterExtensions
  class Railtie < ::Rails::Railtie
    initializer 'router_exntesions', after: 'action_dispatch.configure' do
      ActionDispatch::Routing::Mapper.include RouterExtensions::Partialize
    end
  end
end

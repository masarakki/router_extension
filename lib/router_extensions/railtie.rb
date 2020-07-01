# frozen_string_literal: true

require 'router_extensions/partialize'
require 'router_extensions/subdomain'

module RouterExtensions
  class Railtie < ::Rails::Railtie
    initializer 'router_exntesions', after: 'action_dispatch.configure' do
      ActionDispatch::Routing::Mapper.include RouterExtensions::Partialize
      ActionDispatch::Routing::Mapper.include RouterExtensions::Subdomain
    end
  end
end

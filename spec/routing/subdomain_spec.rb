require 'rails_helper'

RSpec.describe RouterExtensions::Subdomain, type: :routing do
  context 'with name: falsy' do
    it { expect(get: '/falsy_subdomain').to route_to 'subdomain#falsy' }
  end

  context 'with name: truthy' do
    it { expect(get: truthy_subdomain_url(host: 'example.com')).not_to route_to 'subdomain#truthy' }

    it { expect(get: truthy_subdomain_url(host: 'example.com', subdomain: 'truthy')).to route_to 'subdomain#truthy', subdomain: 'truthy' }
  end
end

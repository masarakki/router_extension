require 'rails_helper'

RSpec.describe Admin::DashboardController, type: :routing do
  describe 'routing' do
    describe 'route to #index' do
      it { expect(get: '/admin').to route_to 'admin/dashboard#index' }
      it { expect(admin_root_path).to eq '/admin' }
    end
  end
end

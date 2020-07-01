# frozen_string_literal: true

require 'rails_helper'

RSpec.describe RouterExtensions do
  it { expect(RouterExtensions).to be_const_defined :VERSION }
end

require 'rails_helper'

module Tingui
  RSpec.describe Category, type: :model do
    it { is_expected.to have_many(:posts)}
  end
end

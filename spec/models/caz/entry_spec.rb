require 'rails_helper'

describe Caz::Entry do
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:slug) }

  it { is_expected.to have_many(:entry_categories) }
  it { is_expected.to have_many(:categories).through(:entry_categories) }
end

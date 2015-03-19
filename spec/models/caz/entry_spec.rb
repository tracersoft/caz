require 'rails_helper'

describe Caz::Entry do
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:slug) }

  it { is_expected.to have_many(:entry_categories) }
  it { is_expected.to have_many(:categories).through(:entry_categories) }

  describe '#categories_names' do
    subject { create(:caz_entry) }
    let(:category) { create(:caz_category) }

    it 'returns associated categories names' do
      subject.categories << category
      expect(subject.category_names).to include(category.name)
    end
  end
end

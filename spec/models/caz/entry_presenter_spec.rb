require 'rails_helper'

module Caz
  describe EntryPresenter do
    let(:entry) { instance_double(Entry) }
    subject { EntryPresenter.new(entry) }

    describe '#category_names' do
      it 'returns categories comma separated' do
        category_names = ['Teste', 'Categoria 1']
        allow(entry).to receive(:category_names) { category_names }
        expect(subject.category_names).to include(category_names.join(', '))
      end
    end
  end
end

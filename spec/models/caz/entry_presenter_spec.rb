require 'rails_helper'

module Caz
  describe EntryPresenter do
    let(:entry) { instance_double(Entry) }
    subject { EntryPresenter.new(entry) }

    describe '#category_names' do
      it 'returns categorias comma separated' do
        category_names = ['Teste', 'Categoria 1']
        allow(entry).to receive(:categories) do
          category_names.map do |category_name|
            instance_double(Category, name: category_name)
          end
        end
        expect(subject.category_names).to include(category_names.join(', '))
      end
    end
  end
end

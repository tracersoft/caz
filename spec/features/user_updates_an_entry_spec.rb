require 'rails_helper'

feature 'User updates an entry' do
  Caz::Entry.types.each do |klass_name|
    klass = klass_name.constantize
    feature "of type #{klass}" do
      given!(:resource) { create(klass.model_name.singular) }

      background do
        visit root_path
        click_i18n "buttons.all", model: klass.model_name.human
        click_on resource.title
      end

      scenario 'with valid inputs' do
        fill_model_field(klass, :title, with: 'New title')
        click_save
        expect(page).to have_content(I18n.t('flashes.updated', model: klass.model_name.human))
        expect(page).to have_content('New title')
      end

      scenario 'with invalid inputs' do
        fill_model_field(klass, :title, with: '')
        click_save
        expect(page).to have_content(I18n.t('errors.messages.blank'))
      end
    end
  end
end

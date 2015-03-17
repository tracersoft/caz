require 'rails_helper'

feature 'User creates an entry' do
  Tingui::Entry.types.each do |klass_name|
    klass = klass_name.constantize
    feature "of type #{klass}" do
      background do
        visit root_path
        click_i18n "buttons.new", model: klass.model_name.human
      end

      scenario 'with valid inputs' do
        fill_model_field(klass, :title, with: 'Test')
        fill_model_field(klass, :content, with: 'Test content')
        fill_model_field(klass, :slug, with: 'test')
        click_save
        expect(page).to have_content(I18n.t('flashes.created', model: klass.model_name.human))
        expect(page).to have_content(klass.last.title)
      end

      scenario 'with invalid inputs' do
        click_save
        expect(page).to have_content(I18n.t('errors.messages.blank'))
      end

      feature 'Auto generate post slug' do
        scenario 'user types on title field', :js, :slow do
          skip  'Ajax test is unpredictable'
          fill_model_field(klass, :title, with: 'Slug')
          expect(page).to have_field(klass.human_attribute_name(:slug), with: "slug")
        end
      end
    end
  end
end

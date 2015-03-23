require 'rails_helper'

feature 'User deletes an entry' do
  Caz::Entry.types.each do |klass_name|
    klass = klass_name.constantize
    feature "of type #{klass}" do
      given!(:resource) { create(klass.model_name.singular) }

      background do
        visit root_path
        click_i18n "buttons.all", model: klass.model_name.human
      end

      scenario 'user clicks on delete link' do
        within("#item-#{resource.slug}") do
          find('.delete-button').click
        end
        expect(page).to have_content(I18n.t('flashes.destroyed', model: klass.model_name.human))
        expect(page).not_to have_content(resource.title)
      end
    end
  end
end

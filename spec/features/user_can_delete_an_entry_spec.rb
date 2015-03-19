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
      end
    end
  end
end

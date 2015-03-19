require 'rails_helper'

feature 'User can set posts categories' do
  scenario 'sets a category for a new Entry' do
    category = create(:caz_category)
    visit new_post_path
    fill_model_field(Caz::Post, :title, with: 'Test')
    fill_model_field(Caz::Post, :content, with: 'Test content')
    fill_model_field(Caz::Post, :slug, with: 'test')
    check category.name
    click_save
    within('table') do
      expect(page).to have_content(category.name)
    end
  end
end

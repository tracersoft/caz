require 'rails_helper'

feature 'User creates a post' do
  background do
    visit root_path
    click_i18n 'posts.new'
  end

  scenario 'with valid inputs' do
    fill_model_field(Tingui::Post, :title, with: 'Test')
    fill_model_field(Tingui::Post, :content, with: 'Test content')
    click_save
    expect(page).to have_content(I18n.t('posts.flashes.created'))
    expect(page).to have_content(Tingui::Post.last.title)
  end

  scenario 'with invalid inputs' do
    click_save
    expect(page).to have_content(I18n.t('errors.messages.blank'))
  end
end

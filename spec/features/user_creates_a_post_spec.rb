require 'rails_helper'

feature 'User creates a post' do
  background do
    visit root_path
    click_i18n 'posts.new'
  end

  scenario 'with valid inputs' do
    fill_model_field(Tingui::Post, :title, with: 'Test')
    fill_model_field(Tingui::Post, :content, with: 'Test content')
    fill_model_field(Tingui::Post, :slug, with: 'test')
    click_save
    expect(page).to have_content(I18n.t('posts.flashes.created'))
    expect(page).to have_content(Tingui::Post.last.title)
  end

  scenario 'with invalid inputs' do
    click_save
    expect(page).to have_content(I18n.t('errors.messages.blank'))
  end

  feature 'Auto generate post slug' do
    scenario 'user types on title field', js: true do
      fill_model_field(Tingui::Post, :title, with: 'Slug')
      expect(page).to have_field(Tingui::Post.human_attribute_name(:slug), with: "slug")
    end
  end
end

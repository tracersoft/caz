require 'rails_helper'

describe Tingui::PostSlugsController do
  describe 'create' do
    it 'returns a available slug' do
      post post_slugs_path, title: 'Test'
      expect(json['slug']).to eql('test')
    end

    context 'slug already exists' do
      it 'return slug with uniqid' do
        create(:post, slug: 'test')
        post post_slugs_path, title: 'Test'
        expect(json['slug']).not_to eql('test')
      end
    end

    context 'empty slug' do
      it 'return empty' do
        post post_slugs_path, title: ''
        expect(json['slug']).to eql('')
      end
    end
  end
end

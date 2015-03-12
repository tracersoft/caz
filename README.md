# Tingui

A mountable content management system for Rails applications.

## Installation

```ruby
# Gemfile
gem 'tingui'

# config/routes.rb

mount Tingui::Engine => '/cms'
```

## Usage

Create a subclass of `Tingui::Page` anywhere in your `/app` to create a page.

```ruby
# app/cms/home_page.rb
class HomePage < Tingui::Page
  section :some_section_name do    # create a new section
    widget :some_widget            # render a predefined widget
  end

  section :latest_posts do
    Post.latest(3) do |post|       # you can use ruby as usual in the blocks
      widget :post_truncated, post
    end
  end
end
```

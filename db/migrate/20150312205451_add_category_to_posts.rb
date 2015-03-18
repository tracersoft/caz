class AddCategoryToPosts < ActiveRecord::Migration
  def change
    add_reference :tingui_posts, :category, index: true
    add_foreign_key :tingui_posts, :tingui_categories
  end
end

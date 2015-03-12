class AddSlugToPost < ActiveRecord::Migration
  def change
    add_column :tingui_posts, :slug, :string
    add_index :tingui_posts, :slug, unique: true
  end
end

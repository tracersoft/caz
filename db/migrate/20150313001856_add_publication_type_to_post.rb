class AddPublicationTypeToPost < ActiveRecord::Migration
  def change
    add_column :tingui_posts, :publication_type, :string, null: false, default: 'post'
    add_index :tingui_posts, :publication_type
  end
end

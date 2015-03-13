class RenamePostsToEntries < ActiveRecord::Migration
  def change
    rename_table :tingui_posts, :tingui_entries
  end
end

class RenamePublicationTypeOnEntries < ActiveRecord::Migration
  def change
    rename_column :tingui_entries, :publication_type, :type
  end
end

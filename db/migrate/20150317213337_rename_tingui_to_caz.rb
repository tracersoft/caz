class RenameTinguiToCaz < ActiveRecord::Migration
  def change
    rename_table :tingui_entries, :caz_entries
    rename_table :tingui_categories, :caz_categories
  end
end

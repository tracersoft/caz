class CreateCazEntryCategories < ActiveRecord::Migration
  def change
    create_table :caz_entry_categories do |t|
      t.references :entry, index: true
      t.references :category, index: true
    end
    add_foreign_key :caz_entry_categories, :entries
    add_foreign_key :caz_entry_categories, :categories
  end
end

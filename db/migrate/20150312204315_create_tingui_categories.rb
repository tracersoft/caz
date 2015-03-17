class CreateCazCategories < ActiveRecord::Migration
  def change
    create_table :tingui_categories do |t|
      t.string :name, null: false
      t.references :parent, index: true

      t.timestamps null: false
    end
    add_index :tingui_categories, :name
    add_foreign_key :tingui_categories, :parents
  end
end

class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.text :description
      t.string :image
      t.string :icon

      t.timestamps
    end
  end
end

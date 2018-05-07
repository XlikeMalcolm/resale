class CreateAdverts < ActiveRecord::Migration[5.1]
  def change
    create_table :adverts do |t|
      t.references :category, foreign_key: true, index: true
      t.string :title, index: true
      t.decimal :price, index: true
      t.text :description
      t.references :condition, foreign_key: true, index: true
      t.references :city, foreign_key: true, index: true
      t.string :image
      t.references :user, foreign_key: true, index: true

      t.timestamps
    end
  end
end

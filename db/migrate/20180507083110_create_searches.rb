class CreateSearches < ActiveRecord::Migration[5.1]
  def change
    create_table :searches do |t|
      t.integer :city_id
      t.integer :category_id
      t.string :keywords

      t.timestamps
    end
  end
end

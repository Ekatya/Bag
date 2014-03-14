class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.integer :category_id
      t.integer :subcategory_id

    t.timestamps
    end
  end
end

class AddIndexToModels < ActiveRecord::Migration
  def change
  	add_index :subcategories, :category_id
  	add_index :products, :subcategory_id
  	add_index :products, :category_id

  end
end

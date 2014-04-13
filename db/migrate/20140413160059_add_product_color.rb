class AddProductColor < ActiveRecord::Migration
  def change
  	add_column :products, :color_id, :integer
  end
end

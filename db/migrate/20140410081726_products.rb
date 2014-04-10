class Products < ActiveRecord::Migration
  def change
add_column('products', 'picture1', :string)
add_column('products', 'picture2', :string)
  end
end

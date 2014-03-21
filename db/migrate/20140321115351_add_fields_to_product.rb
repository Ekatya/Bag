class AddFieldsToProduct < ActiveRecord::Migration
  def change
    add_column :products, :description, :text
    add_column :products, :articul, :string
    add_column :products, :favourite, :integer
  end
end

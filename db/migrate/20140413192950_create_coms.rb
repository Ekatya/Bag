class CreateComs < ActiveRecord::Migration
  def change
    create_table :coms do |t|
      t.string :name_user
      t.text :body
      t.integer :product_id
      t.timestamps
    end
  end
end

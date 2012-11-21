class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :category
      t.integer :quantity
      t.decimal :cost
      t.string :image

      t.timestamps
    end
  end
end

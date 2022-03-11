class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.float :price
      t.text :comments
      t.integer :quantity
      t.text :type
      t.string :price_range

      t.timestamps
    end
  end
end

class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.text :description2
      t.string :available
      t.string :category
      t.text :fullprice

      t.timestamps
    end
  end
end

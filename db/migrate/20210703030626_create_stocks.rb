class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      t.integer :created_by_id, index:true
      t.integer :quantity
      t.string :code

      t.timestamps
    end
  end
end

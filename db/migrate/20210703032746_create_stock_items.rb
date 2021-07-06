class CreateStockItems < ActiveRecord::Migration[5.2]
  def change
    create_table :stock_items do |t|
      t.references :stock, foreign_key: true, index:true
      t.references :product, foreign_key: true, index:true
      t.integer :updated_by_id, index:true
      t.datetime :exit_at
      t.integer :status

      t.timestamps
    end
  end
end

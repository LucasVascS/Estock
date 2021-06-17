class CreateProviders < ActiveRecord::Migration[5.2]
  def change
    create_table :providers do |t|
      t.string :name
      t.string :type
      t.string :cpf
      t.string :cnpj
      t.string :cep
      t.string :publicplace
      t.string :complement
      t.string :district
      t.string :location
      t.string :phew

      t.timestamps
    end
  end
end

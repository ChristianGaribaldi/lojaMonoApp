class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :nome
      t.string :descricao
      t.float :precoUnitario

      t.timestamps null: false
    end
  end
end

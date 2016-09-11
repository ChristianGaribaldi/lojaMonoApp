class CreateVendas < ActiveRecord::Migration
  def change
    create_table :vendas do |t|
      t.integer :produto_id
      t.integer :cliente_id
      t.integer :quantidade
      t.float :valorVenda

      t.timestamps null: false
    end
  end
end

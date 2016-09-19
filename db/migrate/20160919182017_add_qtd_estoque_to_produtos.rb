class AddQtdEstoqueToProdutos < ActiveRecord::Migration
  def change
    add_column :produtos, :qtd_estoque, :integer
  end
end

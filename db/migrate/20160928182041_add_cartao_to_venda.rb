class AddCartaoToVenda < ActiveRecord::Migration
  def change
    add_column :vendas, :tipo_pgt, :string
    add_column :vendas, :num_cartao, :string
    add_column :vendas, :validade_cartao, :string
    add_column :vendas, :codigo_cartao, :string
  end
end

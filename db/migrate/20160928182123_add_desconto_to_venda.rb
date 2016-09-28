class AddDescontoToVenda < ActiveRecord::Migration
  def change
    add_column :vendas, :desconto, :float
  end
end

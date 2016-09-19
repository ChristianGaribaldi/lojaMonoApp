class AddEnderecoToClientes < ActiveRecord::Migration
  def change
    add_column :clientes, :rua, :string
    add_column :clientes, :numero, :integer
    add_column :clientes, :bairro, :string
    add_column :clientes, :cidade, :string
    add_column :clientes, :estado, :string
    add_column :clientes, :cep, :string
  end
end

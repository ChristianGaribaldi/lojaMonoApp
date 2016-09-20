class Produto < ActiveRecord::Base
  validates :nome, presence: { message: "Forneça um Nome." }
  validates :descricao, presence: { message: "Forneça uma descriçao." }
  validates :precoUnitario, presence: { message: "Forneça um Preço Unitario." }
  validates :qtd_estoque, presence: { message: "Forneça uma Quantidade para Estoque." }

  has_many :vendas
  has_many :clientes, :through => :vendas

  def descricao_produto_venda
    "#{nome} - R$ #{precoUnitario}/unid - Disponível em Estoque: #{qtd_estoque} "
  end
end

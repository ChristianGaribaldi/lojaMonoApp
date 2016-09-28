class Venda < ActiveRecord::Base
  validates :produto_id, presence: { message: "Selecione o Produto." }
  validates :cliente_id, presence: { message: "Selecione o Cliente." }
  validates :quantidade, presence: { message: "Selecione a quantidade." }
  validates :valorVenda, presence: true

  validate :qtd_venda

  belongs_to :cliente
  belongs_to :produto

  def qtd_venda
    errors.add(:base, "A venda para o produto #{produto.nome} não foi realizada: estoque (#{produto.qtd_estoque} itens) insuficiente para a venda") if quantidade > produto.qtd_estoque
  end
end

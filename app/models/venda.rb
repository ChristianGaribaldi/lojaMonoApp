class Venda < ActiveRecord::Base
  validates :produto_id, presence: { message: "Selecione o Produto." }
  validates :cliente_id, presence: { message: "Selecione o Cliente." }
  validates :quantidade, presence: { message: "Selecione a quantidade." }
  validates :valorVenda, presence: true

  validate :qtd_venda

  belongs_to :cliente
  belongs_to :produto

  def qtd_venda
    errors.add(:base, 'Quantidade indisponível no estoque') if quantidade > produto.qtd_estoque
  end
end

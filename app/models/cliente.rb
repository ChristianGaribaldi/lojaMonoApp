class Cliente < ActiveRecord::Base
  validates :nome, presence: { message: "Forneça um Nome." }
  validates :cpf, presence: { message: "Forneça um CPF." }
  validates :email, presence: { message: "Forneça um Email." }
  validates :rua, presence: { message: "Forneça uma Rua." }
  validates :numero, presence: { message: "Forneça um Número." }
  validates :bairro, presence: { message: "Forneça um Bairro." }
  validates :cidade, presence: { message: "Forneça uma Cidade." }
  validates :estado, presence: { message: "Forneça um Estado." }
  validates :cep, presence: { message: "Forneça um CEP." }

  has_many :vendas
  has_many :produtos, :through => :vendas
end

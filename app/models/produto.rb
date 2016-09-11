class Produto < ActiveRecord::Base
  has_many :vendas
  has_many :clientes, :through => :vendas
end

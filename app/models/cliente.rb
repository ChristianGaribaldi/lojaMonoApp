class Cliente < ActiveRecord::Base
  has_many :vendas
  has_many :produtos, :through => :vendas

end

json.extract! venda, :id, :produto_id, :cliente_id, :quantidade, :valorVenda, :created_at, :updated_at
json.url venda_url(venda, format: :json)
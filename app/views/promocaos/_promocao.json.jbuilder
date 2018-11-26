json.extract! promocao, :id, :titulo, :mensagem, :imagem, :beacon_id, :created_at, :updated_at
json.url promocao_url(promocao, format: :json)

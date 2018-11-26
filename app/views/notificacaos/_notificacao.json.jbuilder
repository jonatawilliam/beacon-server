json.extract! notificacao, :id, :titulo, :mensagem, :beacon_id, :created_at, :updated_at
json.url notificacao_url(notificacao, format: :json)

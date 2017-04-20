json.extract! usuario, :id, :user_id, :rol, :nombre, :rut, :mail, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)

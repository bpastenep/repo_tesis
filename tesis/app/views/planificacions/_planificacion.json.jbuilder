json.extract! planificacion, :id, :fecha_inicio, :fecha_termino, :cantidad_clases, :created_at, :updated_at
json.url planificacion_url(planificacion, format: :json)

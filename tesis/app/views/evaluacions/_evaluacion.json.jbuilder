json.extract! evaluacion, :id, :id_evaluacion, :fecha, :hora, :repetir, :created_at, :updated_at
json.url evaluacion_url(evaluacion, format: :json)

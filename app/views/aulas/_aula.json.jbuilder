json.extract! aula, :id, :nombre, :bloque, :capacidad, :equipamiento, :ocupado, :created_at, :updated_at
json.url aula_url(aula, format: :json)

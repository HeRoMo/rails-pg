json.extract! project, :id, :name, :description, :start_on, :end_on, :created_at, :updated_at
json.url project_url(project, format: :json)

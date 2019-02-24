json.extract! task, :id, :project_id_id, :name, :description, :status, :start_on, :end_on, :created_at, :updated_at
json.url task_url(task, format: :json)

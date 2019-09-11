json.extract! device, :id, :staffId, :OS, :CPU, :RAM, :Model, :created_at, :updated_at
json.url device_url(device, format: :json)

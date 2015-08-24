json.array!(@wingbacks) do |wingback|
  json.extract! wingback, :id
  json.url wingback_url(wingback, format: :json)
end

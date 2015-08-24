json.array!(@formulars) do |formular|
  json.extract! formular, :id, :first_name, :last_name, :street, :zip, :site, :information
  json.url formular_url(formular, format: :json)
end

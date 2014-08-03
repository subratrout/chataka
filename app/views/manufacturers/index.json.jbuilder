json.array!(@manufacturers) do |manufacturer|
  json.extract! manufacturer, :id, :manufacturer_name, :brand_name, :street1, :street2, :post_office, :city, :dist, :state, :pin, :mobile, :cml_no, :valid_date, :operative_status, :bottle_20liters, :bottle_2liters, :bottle_1liter, :bottle_500ml, :email, :description
  json.url manufacturer_url(manufacturer, format: :json)
end

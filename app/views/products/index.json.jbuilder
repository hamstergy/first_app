json.array!(@products) do |product|
  json.extract! product, :id, :title, :description, :description2, :available, :category, :fullprice
  json.url product_url(product, format: :json)
end

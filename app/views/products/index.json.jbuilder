json.array!(@products) do |product|
  json.extract! product, :id, :\, :title, :description, :description2, :image_url, :price, :available, :category
  json.url product_url(product, format: :json)
end

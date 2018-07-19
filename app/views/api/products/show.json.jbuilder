json.id @product1.id
json.name @product1.name
json.description @product1.description
json.price @product1.price
json.image_url @product1.image_url
json.formatted do
  json.discounted @product1.discounted?
  json.tax @product1.tax
  json.total @product1.total
end

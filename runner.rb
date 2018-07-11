require "unirest"

response = Unirest.get("http://localhost:3000/api/all_products")

p response

response = Unirest.get("http://localhost:3000/api/first_product")

p response
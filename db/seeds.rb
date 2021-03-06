# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Product.create(name: "Harry's Blades", price: 16, image_url: "https://www.harrys.com/harrys-cdnx-prod/assets/images/gallery_images/attachments/f5162bc0587e45be9702a0518457aa79df38c643.jpg", description: "
#  5 German blades.")
# Product.create(name: "Shave Gel", price: 6, image_url: "https://www.harrys.com/harrys-cdnx-prod/assets/images/gallery_images/attachments/b2ee7312be64beaaaa8b003499fe82afe47ef3a5.jpg", description: "The rich lather protects your face and keeps you in control of your shave.")
# Product.create(name: "The Truman", price: 9, image_url: "https://www.harrys.com/harrys-cdnx-prod/assets/images/gallery_images/attachments/3c2b79bd2a0ef3025b1df8d478f9de679067092e.jpg", description: "A rubberized handle with a textured pattern provides optimal control, even when wet.")
# Product.create(name: "Post-Shave Balm", price: 8, image_url: "https://www.harrys.com/harrys-cdnx-prod/assets/images/gallery_images/attachments/33ef2a0ac7e39c9c82d00e618fb25f7d1f3c3560.jpg", description: "Designed to calm, balance, and soothe your skin after you shave.")

# Supplier.create(name: "Harry's German Industries", email: "markel@germany.com", phone_number: "123-555-5678")
# Supplier.create(name: "Harry's American Industries", email: "donald@usa.com", phone_number: "123-555-5679")
# Supplier.create(name: "Harry's Canadian Industries", email: "trudaeu@canada.com", phone_number: "123-555-5670")

# associate the products with a supplier

suppliers = Supplier.all

products = Product.all

products.each do |product|
  product.supplier_id = suppliers.sample.id
  product.save
end


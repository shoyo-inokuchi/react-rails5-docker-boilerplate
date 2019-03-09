# Create admin user during development
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

# Create sample fruit data for API
Fruit.create(name: "Apple", price: 1.50)
Fruit.create(name: "Orange", price: 1.75)
Fruit.create(name: "Grapefruit", price: 2.25)
Fruit.create(name: "Banana", price: 0.75)
Fruit.create(name: "Mango", price: 2.80)
Fruit.create(name: "Kiwi", price: 2.05)
Fruit.create(name: "Pomegranate", price: 3.67)
Fruit.create(name: "Raspberry", price: 0.21)
Fruit.create(name: "Strawberry", price: 0.98)
Fruit.create(name: "Blueberry", price: 0.23)
Fruit.create(name: "Pineapple", price: 7.90)


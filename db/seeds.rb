Product.delete_all
Product.create! id: 1, name: "Sticker #1", price: 2.50, active: true
Product.create! id: 2, name: "Sticker #2", price: 2.50, active: true
Product.create! id: 3, name: "Sticker #3", price: 2.50, active: true
Product.create! id: 4, name: "Sticker #4", price: 2.50, active: true
Product.create! id: 5, name: "Sticker #5", price: 2.50, active: true
Product.create! id: 6, name: "Sticker #6", price: 2.50, active: true
Product.create! id: 7, name: "Sticker #7", price: 0.50, active: true
Product.create! id: 8, name: "Sticker #8", price: 0.01, active: true

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"

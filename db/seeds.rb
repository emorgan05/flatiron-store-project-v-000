10.times do
  Item.create(
    title: Faker::Commerce.product_name,
    inventory: Faker::Number.number(2),
    price: Faker::Number.number(4)
  )
  Category.create(title: Faker::Commerce.department)
end

counter = 1
Item.all.each do |item|
  item.category_id = counter
  item.save
  counter += 1
end

User.create(email: "a@email.com", password: "apples")
User.create(email: "b@email.com", password: "banana")
User.create(email: "c@email.com", password: "clementine")
User.create(email: "d@email.com", password: "drieddate")
User.create(email: "e@email.com", password: "eggnog")

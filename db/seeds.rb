Product.delete_all
#...

5.times do |i|
    Product.create(title: Faker::Book.title, 
                   description: Faker::Lorem.paragraph(3),
                   image_url: Faker::Placeholdit.image("100x100"),
                   price: rand(10.00..50.00))
end
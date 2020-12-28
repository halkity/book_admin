publisher = Publisher.create(
  name: "Gihyo inc",
  address: "Ichigaya",
)

publisher.books << Book.create(
  name: "Book 1",
  published_on: Time.current,
  price: 1000,
)

publisher.books << Book.create(
  name: "Book 2",
  published_on: Time.current,
  price: 2000,
)

matz = Author.create(name: "Matsumoto", penname: "Matz")
dhh = Author.create(name: "David Heinemeier Hansson", penname: "DHH")

matz.books << Book.find(1)
matz.books << Book.find(2)
Book.find(1).authors << dhh

Book.create(
  name: "enum Book 1",
  sales_status: :now_on_sale,
  publisher: Publisher.find(1),
  price: 100,
)

Book.create(
  name: "enum Book 2",
  sales_status: "now_on_sale",
  publisher: Publisher.find(1),
  price: 100,
)

Book.create(
  name: "enum Book 3",
  sales_status: 1,
  publisher: Publisher.find(1),
  price: 100,
)
class Product {
  final String name, description, image, title, price;
  final int id;

  Product(
      {required this.id,
      required this.image,
      required this.name,
      required this.description,
      required this.price,
      required this.title});
}

List<Product> products = [
  Product(
      id: 1,
      name: "Hot Pizza",
      title: "Taste our hot Pizza",
      description:
          "pizza, dish of Italian origin consisting of a flattened disk of bread dough topped with some combination of olive oil, oregano, tomato, olives, mozzarella or other cheese, and many other ingredients, baked quickly—usually, in a commercial setting, using a wood-fired oven heated to a very high temperature—and served hot",
      price: "\$55",
      image: "assets/images/pizza.png"),
  Product(
      id: 2,
      name: "Hot Burger",
      title: "Taste our hot burger",
      description:
          "A hamburger, or simply burger, is a sandwich consisting of fillings—usually a patty of ground meat, typically beef—placed inside a sliced bun or bread roll.",
      price: "\$34",
      image: "assets/images/burger.png"),
  Product(
      id: 3,
      name: "Hot Salan",
      title: "Taste our hot Salan",
      description:
          "Salan is a spicy, nutty, tangy and aromatic Hyderabadi side dish served with biryani. The base of the curry is made with peanuts, sesame seeds, dried coconut, tamarind and spices. There are numerous varieties of salan made with eggplants, tomatoes, large green chilies etc.",
      price: "\$10",
      image: "assets/images/salan.png"),
  Product(
      id: 4,
      name: "Hot Biryani",
      title: "Taste our hot Biryani",
      description:
          "Simply put, biryani is a spiced mix of meat and rice, traditionally cooked over an open fire in a leather pot. It is combined in different ways with a variety of components to create a number of highly tasty and unique flavor combinations.",
      price: "\$30",
      image: "assets/images/biryani.png"),
  Product(
      id: 5,
      name: "Drinks",
      title: "Taste our cold drinks",
      description: "Just some cold drinks =))",
      price: "\$40",
      image: "assets/images/drink.png"),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";

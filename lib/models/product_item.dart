class ProductItem {
  final String image, title;
  final int amount, uid;
  ProductItem({
    this.uid,
    this.image,
    this.title,
    this.amount,
  });
}

List<ProductItem> products = [
  ProductItem(
    uid: 1,
    title: "PS5 Controller",
    amount: 75,
    image: "images/ps5.png",
  ),
  ProductItem(
    uid: 2,
    title: "Drone",
    amount: 155,
    image: "images/drone.png",
  ),
  ProductItem(
    uid: 3,
    title: "Beats Studio",
    amount: 230,
    image: "images/beats.png",
  ),
  ProductItem(
    uid: 4,
    title: "Alexa",
    amount: 45,
    image: "images/alexa.png",
  ),
  ProductItem(
    uid: 5,
    title: "Nintendo Switch",
    amount: 298,
    image: "images/switch.png",
  ),
  ProductItem(
    uid: 6,
    title: "Apple Watch",
    amount: 165,
    image: "images/watch.png",
  ),
  ProductItem(
    uid: 7,
    title: "Macbook",
    amount: 1950,
    image: "images/mac.png",
  ),
  ProductItem(
    uid: 8,
    title: "Iphone",
    amount: 1200,
    image: "images/iphone.png",
  ),
];

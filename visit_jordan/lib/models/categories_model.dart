class Categories {
  String imageUrl;
  String name;
  String address;
  int price;

  Categories({
    this.imageUrl,
    this.name,
    this.address,
    this.price,
  });
}

final List<Categories> hotels = [
  Categories(
    imageUrl: 'assets/images/hotel0.jpg',
    name: 'Hotel 0',
    address: '404 Great St',
    price: 175,
  ),
  Categories(
    imageUrl: 'assets/images/hotel1.jpg',
    name: 'Hotel 1',
    address: '404 Great St',
    price: 300,
  ),
  Categories(
    imageUrl: 'assets/images/hotel2.jpg',
    name: 'Hotel 2',
    address: '404 Great St',
    price: 240,
  ),
];

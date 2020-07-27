class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({
    this.imageUrl,
    this.name,
    this.address,
    this.price,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/hotel0.jpg',
    name: 'LE ROYAL Hotel',
    address: 'Zahran Street',
    price: 175,
  ),
  Hotel(
    imageUrl: 'assets/images/hotel1.jpg',
    name: 'Vermont Hotel ',
    address: 'Fifth Circle Abdoun',
    price: 300,
  ),
  Hotel(
    imageUrl: 'assets/images/hotel2.jpg',
    name: 'Kempinski Hotel',
    address: 'King Hussein Street, Aqaba',
    price: 240,
  ),
];

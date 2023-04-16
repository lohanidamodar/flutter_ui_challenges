class Hotel {
  String? imageUrl;
  String? name;
  String? address;
  int? price;

  Hotel({
    this.imageUrl,
    this.name,
    this.address,
    this.price,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl:
        'https://cdn.pixabay.com/photo/2012/11/21/10/24/building-66789__340.jpg',
    name: 'Hotel 0',
    address: '404 Great St',
    price: 175,
  ),
  Hotel(
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/05/31/10/23/manor-house-2359884__340.jpg',
    name: 'Hotel 1',
    address: '404 Great St',
    price: 300,
  ),
  Hotel(
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/05/31/10/23/manor-house-2359884__340.jpg',
    name: 'Hotel 2',
    address: '404 Great St',
    price: 240,
  ),
];

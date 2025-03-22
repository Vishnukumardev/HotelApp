import 'assets.dart';

enum Validator { email, password, phoneNumber, name, age, dob }

class House {
  final String location;
  final String imageUrl;
  final String houseName;
  final String bedroomCount;
  final String price;
  final String rating;
  final String houseUrl;

  House({
    required this.location,
    required this.imageUrl,
    required this.houseName,
    required this.bedroomCount,
    required this.price,
    required this.rating,
    required this.houseUrl,
  });
}

final List<House> houses = [
  House(
    location: 'Indonesia',
    imageUrl: Indonesia,
    houseName: "Sunnyvale Apartments",
    bedroomCount: "2 bedrooms",
    price: "\$12.99",
    rating: "4.5/5",
    houseUrl: house1,
  ),
  House(
    location: 'Australia',
    imageUrl: Australia,
    houseName: "Oakwood Residences",
    bedroomCount: "3 bedrooms",
    price: "\$25.50",
    rating: "4.8/5",
    houseUrl: house2,
  ),
  House(
    location: 'America',
    imageUrl: America,
    houseName: "Lakeside Villas",
    bedroomCount: "1 bedroom",
    price: "\$7.45",
    rating: "4.2/5",
    houseUrl: house3,
  ),
  House(
    location: 'Europe',
    imageUrl: Europe,
    houseName: "Maple Grove Homes",
    bedroomCount: "4 bedrooms",
    price: "\$100.00",
    rating: "4.7/5",
    houseUrl: house4,
  ),
  House(
    location: 'Japan',
    imageUrl: Japan,
    houseName: "Riverfront Suites",
    bedroomCount: "2 bedrooms",
    price: "\$59.99",
    rating: "4.3/5",
    houseUrl: house5,
  ),
  House(
    location: 'India',
    imageUrl: India,
    houseName: "Pine Hill Cottages",
    bedroomCount: "5 bedrooms",
    price: "\$3.75",
    rating: "4.6/5",
    houseUrl: house6,
  ),
];

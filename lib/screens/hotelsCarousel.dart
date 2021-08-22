import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_ui/models/hotels.dart';

// ignore: must_be_immutable
class HotelsCarosuel extends StatelessWidget {
  HotelsCarosuel({Key? key}) : super(key: key);

  List<Hotel> hotels = [
    Hotel(
      name: 'Valencia Downtown',
      image: 'hotels/valencia.jpg',
      price: '400',
      city: 'Cairo',
      rating: 4,
    ),
    Hotel(
      name: 'Jasmine Hotel',
      image: 'hotels/jasmine.jpg',
      price: '350',
      city: 'Cairo',
      rating: 3,
    ),
    Hotel(
      name: 'SteigenBerger',
      image: 'hotels/steigenBerger.jpg',
      price: '550',
      city: 'Cairo',
      rating: 5,
    ),
    Hotel(
      name: 'Desert Moon',
      image: 'hotels/dMoon.jpg',
      price: '380',
      city: 'Cairo',
      rating: 4,
    ),
    Hotel(
      name: 'Cairo Marriott Hotel',
      image: 'hotels/marriott.jpg',
      price: '600',
      city: 'Cairo',
      rating: 5,
    ),
    Hotel(
      name: 'Golden Tulip',
      image: 'hotels/tulip.jpg',
      price: '750',
      city: 'Cairo',
      rating: 5,
    ),
    Hotel(
      name: 'City Max',
      image: 'hotels/cityMax.jpg',
      price: '800',
      city: 'Aswan',
      rating: 3,
    ),
    Hotel(
      name: 'Mango Guest',
      image: 'hotels/mangoGuest.jpg',
      price: '650',
      city: 'Aswan',
      rating: 3,
    ),
    Hotel(
      name: 'Nile Cruise',
      image: 'hotels/nileCruise.jpg',
      price: '450',
      city: 'Aswan',
      rating: 4,
    ),
    Hotel(
      name: 'Kendaka Nubian House',
      image: 'hotels/nubianHouse.jpg',
      price: '400',
      city: 'Aswan',
      rating: 2,
    ),
    Hotel(
      name: 'Nubian Paeadise',
      image: 'hotels/nubianParadise.jpg',
      price: '480',
      city: 'Aswan',
      rating: 3,
    ),
    Hotel(
      name: 'Pyramids Eyes Hotel',
      image: 'hotels/pyEyes.jpg',
      price: '670',
      city: 'Giza',
      rating: 4,
    ),
    Hotel(
      name: 'Marriott Mena House',
      image: 'hotels/mMenaHouse.jpg',
      price: '600',
      city: 'Giza',
      rating: 4,
    ),
    Hotel(
      name: 'Hayat Pyramids View Hotel',
      image: 'hotels/hayat.jpg',
      price: '460',
      city: 'Giza',
      rating: 3,
    ),
    Hotel(
      name: 'Panorama Pyramids Inn',
      image: 'hotels/panorama.jpg',
      price: '750',
      city: 'Giza',
      rating: 4,
    ),
    Hotel(
      name: 'Pyramids Guest House',
      image: 'hotels/pyGuestHouse.jpg',
      price: '800',
      city: 'Giza',
      rating: 3,
    ),
    Hotel(
      name: 'Sofital Winter Palace',
      image: 'hotels/sofitelLuxor.jpg',
      price: '880',
      city: 'Luxor',
      rating: 5,
    ),
    Hotel(
      name: 'Lberotel Luxor',
      image: 'hotels/lberotlelLuxor.jpg',
      price: '760',
      city: 'Luxor',
      rating: 3,
    ),
    Hotel(
      name: 'Nefertiti Hotel Luxor',
      image: 'hotels/nefertitiLuxor.jpg',
      price: '780',
      city: 'Luxor',
      rating: 4,
    ),
    Hotel(
      name: 'Thebes Hotel',
      image: 'hotels/thebesLuxor.jpg',
      price: '670',
      city: 'Luxor',
      rating: 3,
    ),
    Hotel(
      name: 'Hilton Luxor Resort & spa',
      image: 'hotels/hiltonLuxor.jpg',
      price: '860',
      city: 'Luxor',
      rating: 5,
    ),
    Hotel(
      name: 'Dahab Plaza Hotel',
      image: 'hotels/dahabSinai.jpg',
      price: '950',
      city: 'Sinai',
      rating: 4,
    ),
    Hotel(
      name: 'The Bedouin Moon Hotel',
      image: 'hotels/bedouinSinai.jpg',
      price: '550',
      city: 'Sinai',
      rating: 3,
    ),
    Hotel(
      name: 'Golden Europe Hotel',
      image: 'hotels/GoldenEuropSinai.jpg',
      price: '970',
      city: 'Sinai',
      rating: 4,
    ),
    Hotel(
      name: 'The Castle Hotel',
      image: 'hotels/castleSinai.jpg',
      price: '660',
      city: 'Sinai',
      rating: 3,
    ),
    Hotel(
      name: 'Grand Oasis Resort',
      image: 'hotels/oasisSinai.jpg',
      price: '850',
      city: 'Sinai',
      rating: 4,
    ),
  ];

  Text _buildRating(int rating) {
    String stars = '';
    for (int i = 0; i < rating; i++) {
      stars += '⭐ ';
    }
    return Text(stars);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Exclusive Hotels',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5)),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'See all',
                    style: TextStyle(
                        color: Colors.cyan,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.0),
                  ))
            ],
          ),
        ),
        Container(
            height: 310,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: hotels.length,
                itemBuilder: (BuildContext context, index) {
                  Hotel hotel = hotels[index];
                  return Container(
                    margin: EdgeInsets.all(10),
                    width: 210,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Positioned(
                          bottom: 15,
                          child: Container(
                            height: 130,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    hotel.name,
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 1.2),
                                  ),
                                  Expanded(
                                    child: Text(
                                      hotel.price + ' LE / Night',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                  Expanded(child: _buildRating(hotel.rating)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0, 2),
                                    blurRadius: 6,
                                  ),
                                ]),
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image(
                                    image: AssetImage(hotel.image),
                                    fit: BoxFit.cover,
                                    height: 180.0,
                                    width: 180.0,
                                  ),
                                ),
                                Positioned(
                                  left: 10,
                                  bottom: 10,
                                  child: Row(
                                    //crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        FontAwesomeIcons.locationArrow,
                                        size: 10,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        hotel.city,
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )),
                      ],
                    ),
                  );
                })),
      ],
    );
  }
}

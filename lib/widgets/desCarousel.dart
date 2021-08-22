import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_ui/models/destination.dart';
import 'package:travel_ui/screens/destinationScreen.dart';

// ignore: must_be_immutable
class DestinationCarosel extends StatelessWidget {
  DestinationCarosel({Key? key}) : super(key: key);
  List<Destination> destinations = [
    Destination(
        city: 'Aswan',
        image: 'asset/aswan.jpg',
        activity: 20,
        description:
            'Aswan is the ancient city of Swenett, later known as Syene'),
    Destination(
        city: 'Cairo',
        image: 'asset/cairo.jpg',
        activity: 56,
        description:
            'Cairo is the largest city in Africa, with a name that means "the victorious city."'),
    Destination(
        city: 'Giza',
        image: 'asset/giza.jpg',
        activity: 36,
        description:
            'Giza is the site of some of the most impressive ancient monuments in the world'),
    Destination(
        city: 'Luxor',
        image: 'asset/luxor.jpg',
        activity: 17,
        description:
            'Luxor is a modern-day Egyptian city that lies atop an ancient city.'),
    Destination(
        city: 'South Sinai',
        image: 'asset/sinai.jpg',
        activity: 12,
        description:
            'Sinai is a peninsula in Egypt, and the only part of the country located in Asia.'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Top Destinations',
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
            height: 300,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: destinations.length,
                itemBuilder: (BuildContext context, index) {
                  Destination destination = destinations[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => DestinationScreen(
                                    destination: destination,
                                  )));
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      width: 210,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Positioned(
                            bottom: 15,
                            child: Container(
                              height: 120,
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
                                      '${destination.activity}' + ' Activities',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 1.2),
                                    ),
                                    Expanded(
                                      child: Text(
                                        '${destination.description}',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 13,
                                        ),
                                      ),
                                    )
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
                                  Hero(
                                    tag: destination.image,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image(
                                        image: AssetImage(destination.image),
                                        fit: BoxFit.cover,
                                        height: 180.0,
                                        width: 180.0,
                                      ),
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
                                          destination.city,
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
                    ),
                  );
                })),
      ],
    );
  }
}

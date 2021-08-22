import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_ui/models/activity.dart';
import 'package:travel_ui/models/destination.dart';

class DestinationScreen extends StatefulWidget {
  // DestinationScreen({Key? key}) : super(key: key);

  final Destination destination;

  const DestinationScreen({
    required this.destination,
  });

  @override
  _DestinationScreenState createState() => _DestinationScreenState();
}

List<Activity> aswanActivities = [
  Activity(
    image: 'asset/abu_simple.jpg',
    name: 'Abu Simple',
    rating: 5,
    price: '150',
    time: ['9:00 am', '06:00 pm'],
  ),
  Activity(
    image: 'asset/philae.jpg',
    name: 'Philae',
    price: '200',
    rating: 5,
    time: ['9:00 am', '04:00 pm'],
  ),
];

List<Activity> cairoActivities = [
  Activity(
    name: "Al-Mu'izz Street",
    image: 'asset/muizz.jpg',
    rating: 3,
    price: '300',
    time: ['8:00 am', '11:00 pm'],
  ),
  Activity(
    name: "Cairo Catadel",
    image: 'asset/citadel.jpg',
    rating: 4,
    price: '180',
    time: ['10:00 am', '06:00 pm'],
  ),
  Activity(
    name: "Salah al-Din Square",
    image: 'asset/salahSquare.jpg',
    rating: 4,
    price: '250',
    time: ['8:00 am', '11:00 pm'],
  ),
];
List<Activity> gizaActivities = [
  Activity(
    name: "Giza Plateau",
    image: 'asset/gizaPlateau.jpg',
    rating: 4,
    price: '300',
    time: ['8:00 am', '08:00 pm'],
  ),
  Activity(
    name: "Saqqara",
    image: 'asset/saqqara.jpg',
    rating: 3,
    price: '180',
    time: ['8:00 am', '08:00 pm'],
  ),
];

List<Activity> luxorActivities = [
  Activity(
    name: "Karnak",
    image: 'asset/karnak.jpg',
    rating: 5,
    price: '200',
    time: ['8:00 am', '09:00 pm'],
  ),
  Activity(
    name: "Valley of the Kings",
    image: 'asset/valleyKings.jpg',
    price: '100',
    rating: 3,
    time: ['8:00 am', '07:00 pm'],
  ),
  Activity(
    name: "Deir al-Bahari",
    image: 'asset/deir.jpg',
    rating: 4,
    price: '150',
    time: ['8:00 am', '06:00 pm'],
  ),
];
List<Activity> sinaiActivities = [
  Activity(
    name: "Saint Catherine's Monastery",
    image: 'asset/saint.jpg',
    rating: 5,
    price: '200',
    time: ['8:00 am', '10:00 pm'],
  ),
];

class _DestinationScreenState extends State<DestinationScreen> {
  Text _buildRating(int rating) {
    String stars = '';
    for (int i = 0; i < rating; i++) {
      stars += '⭐ ';
    }
    return Text(stars);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                  height: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.0, 2.0),
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: Hero(
                    tag: widget.destination.image,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Image(
                        image: AssetImage(widget.destination.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 30,
                        )),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.search,
                              size: 30,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.sort,
                              size: 30,
                            )),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                left: 20.0,
                bottom: 20.0,
                child: Row(
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
                      widget.destination.city,
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
              Positioned(
                right: 20.0,
                bottom: 20.0,
                child: Icon(
                  Icons.location_on,
                  size: 25,
                  color: Colors.white70,
                ),
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
                // itemCount: widget.destination.aswanActivities.length,
                itemCount: activitylist(widget.destination.city).length,
                itemBuilder: (BuildContext context, dynamic index) {
                  Activity activity =
                      activitylist(widget.destination.city)[index];
                  return Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 15.0),
                        height: 170.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(100.0, 20.0, 20.0, 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      activitylist(
                                              widget.destination.city)[index]
                                          .name,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          activitylist(widget.destination.city)[
                                                      index]
                                                  .price +
                                              ' LE',
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          'per person',
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ]),
                              _buildRating(activity.rating),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                      width: 70,
                                      decoration: BoxDecoration(
                                        color: Colors.cyan[200],
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        activity.time[0],
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16),
                                      )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                      width: 70,
                                      decoration: BoxDecoration(
                                        color: Colors.cyan[200],
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        activity.time[1],
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16),
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20.0,
                        top: 15.0,
                        bottom: 15.0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image(
                            width: 110.0,
                            image: AssetImage(activity.image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }

  List activitylist(dynamic name) {
    switch (name) {
      case 'Aswan':
        return aswanActivities;

      case 'Cairo':
        return cairoActivities;
      case 'Giza':
        return gizaActivities;
      case 'Luxor':
        return luxorActivities;
      case 'Sinai':
        return sinaiActivities;
      default:
        return [];
    }
  }
}

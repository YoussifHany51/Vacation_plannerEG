import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_ui/models/destination.dart';
import 'package:travel_ui/screens/hotelsCarousel.dart';
import 'package:travel_ui/widgets/desCarousel.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking,
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: _selectedIndex == index ? Colors.cyan.shade100 : Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Icon(
          _icons[index],
          size: 30,
          color: _selectedIndex == index ? Colors.cyan : Colors.grey,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.symmetric(vertical: 30),
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, right: 120),
            child: Text(
              'What would you like to find ?',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: _icons
                .asMap()
                .entries
                .map(
                  (MapEntry map) => _buildIcon(map.key),
                )
                .toList(),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 20,
          ),
          DestinationCarosel(),
          SizedBox(
            height: 20,
          ),
          HotelsCarosuel(),
        ],
      )),
    );
  }
}

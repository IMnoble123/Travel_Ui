import 'package:flutter/material.dart';
import 'package:travel_ui/gen/colors.gen.dart';

import '../../../shared/widget/destination_carousel.dart';
import '../../../shared/widget/hotel_carousel.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "/homeScreen";
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  int _currentTab = 0;

  final List<IconData> _icons = [
    Icons.airplanemode_active_sharp,
    Icons.bed_rounded,
    Icons.nordic_walking_rounded,
    Icons.bike_scooter,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(child: createBody()), bottomNavigationBar: bottomBar());
  }





  Widget bottomBar() {
    return BottomNavigationBar(
      currentIndex: _currentTab,
      onTap: (int value) {
        setState(() {
          _currentTab = value;
        });
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            size: 30.0,
          ),
          label: "search",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.local_pizza,
            size: 30.0,
          ),
          label: "Location",
        ),
        BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundImage: NetworkImage('http://i.imgur.com/zL4Krbz.jpg'),
            ),
            label: "FAQ")
      ],
    );
  }

  Widget createBody() {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20.0, right: 120.0),
          child: Text(
            'What would you like to find?',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 20.0),
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
        const SizedBox(height: 20.0),
        const DestinationCarousel(),
        const SizedBox(height: 20.0),
        const HotelCarousel(),
      ],
    );
  }

  Widget _buildIcon(int index) {
    return InkWell(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: _selectedIndex == index
              ? Theme.of(context).colorScheme.secondary
              : const Color(0xFFE7EBEE),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(
          _icons[index],
          size: 25.0,
          color: _selectedIndex == index
              ? ColorName.colorWhite
              : const Color(0xFFB4C1C4),
        ),
      ),
    );
  }
}

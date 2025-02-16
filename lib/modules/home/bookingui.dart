import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../widgets/Widgets.dart';

class Bookingui extends StatefulWidget {
  const Bookingui({super.key});

  @override
  _BookinguiState createState() => _BookinguiState();
}

class _BookinguiState extends State<Bookingui> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Center(child: Text('Home')),
    Center(child: Text('Favorites')),
    Center(child: Text('Bookings')),
    Center(child: Text('Messages')),
    Center(child: Text('Profile')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double textScale = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 10,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildSearchBar(context, screenWidth, screenHeight, textScale),
              const SizedBox(height: 10.0),
              buildPopularLocations(
                  context, screenWidth, screenHeight, textScale),
              buildRecommended(context, screenWidth, screenHeight, textScale),
              buildHostingAd(context, screenWidth, screenHeight, textScale),
              buildMostViewed(context, screenWidth, screenHeight, textScale),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: white,
        selectedItemColor: pink,
        unselectedItemColor: black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_online),
            label: 'Bookings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

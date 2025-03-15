import '../../utils/path_provider.dart';

class HomeController extends GetxController {
  int selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Center(child: Text('Home')),
    Center(child: Text('Favorites')),
    Center(child: Text('Bookings')),
    Center(child: Text('Messages')),
    Center(child: Text('Profile')),
  ];

  void onItemTapped(int index) {
    selectedIndex = index;
    update();
  }
}

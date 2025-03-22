import '../../utils/path_provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
        builder: (controller) => Scaffold(
              body: IndexedStack(
                index: controller.selectedIndex,
                children: MainController.widgetOptions,
              ),
              bottomNavigationBar: BottomNavigationBar(
                currentIndex: controller.selectedIndex,
                onTap: controller.onItemTapped,
                backgroundColor: white,
                selectedItemColor: pink,
                unselectedItemColor: black,
                showSelectedLabels: true,
                showUnselectedLabels: true,
                type: BottomNavigationBarType.fixed,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.map),
                    label: 'Map',
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
            ));
  }
}

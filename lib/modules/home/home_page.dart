import '../../utils/path_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        builder: (controller) => Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                toolbarHeight: 10,
              ),
              body: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      buildSearchBar(
                          context, Get.width, Get.height, Get.textScaleFactor),
                      const SizedBox(height: 10.0),
                      buildPopularLocations(
                          context, Get.width, Get.height, Get.textScaleFactor),
                      buildRecommended(
                          context, Get.width, Get.height, Get.textScaleFactor),
                      buildHostingAd(
                          context, Get.width, Get.height, Get.textScaleFactor),
                      buildMostViewed(
                          context, Get.width, Get.height, Get.textScaleFactor),
                    ],
                  ),
                ),
              ),
              bottomNavigationBar: BottomNavigationBar(
                currentIndex: controller.selectedIndex,
                onTap: controller.onItemTapped,
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
            ));
  }
}

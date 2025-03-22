import '../../utils/path_provider.dart';

class BookingsPage extends StatelessWidget {
  const BookingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BookingsController>(
        builder: (controller) =>
            Scaffold(body: Center(child: Text("Bookings"))));
  }
}

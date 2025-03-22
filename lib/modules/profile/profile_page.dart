import '../../utils/path_provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
        builder: (controller) =>
            Scaffold(body: Center(child: Text("Profile"))));
  }
}

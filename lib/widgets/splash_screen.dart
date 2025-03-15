import '../utils/path_provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Get.toNamed(AppRoutes.authentication); // Navigate without back button
    });
    return SafeArea(
        child: Scaffold(
            backgroundColor: Theme.of(context).colorScheme.primary,
            body: Center(
              child: logoWidget(),
            )));
  }
}

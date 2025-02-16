import '../../utils/path_provider.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthenticationController>(
        builder: (controller) => SafeArea(child: Scaffold()));
  }
}

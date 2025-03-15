import 'package:ui_app/modules/authentication/widgets/loginWidget.dart';
import 'package:ui_app/modules/authentication/widgets/registerWidget.dart';

import '../../utils/path_provider.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthenticationController>(
        builder: (controller) => SafeArea(
                child: Scaffold(
              backgroundColor: Theme.of(context).primaryColor,
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      controller.isRegister
                          ? loginWidget(controller: controller)
                          : registerWidget(controller: controller),
                    ],
                  ),
                ),
              ),
            )));
  }
}

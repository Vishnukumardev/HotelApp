import 'package:ui_app/modules/authentication/widgets/loginWidget.dart';
import 'package:ui_app/modules/authentication/widgets/registerWidget.dart';

import '../../utils/path_provider.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final TextEditingController emailId = TextEditingController();
    final TextEditingController password = TextEditingController();
    final TextEditingController reEnterPassword = TextEditingController();
    return GetBuilder<AuthenticationController>(
        builder: (controller) => SafeArea(
                child: Scaffold(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      controller.isRegister
                          ? registerWidget(
                              controller: controller,
                              email: emailId,
                              password: password,
                              reEnterPassword: reEnterPassword)
                          : loginWidget(
                              key: formKey,
                              controller: controller,
                              email: emailId,
                              password: password,
                            ),
                    ],
                  ),
                ),
              ),
            )));
  }
}

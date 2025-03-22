import '../../../utils/path_provider.dart';

Widget loginWidget({
  required GlobalKey key,
  required AuthenticationController controller,
  required TextEditingController email,
  required TextEditingController password,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    spacing: 10.0,
    children: [
      const SizedBox(
        height: 90,
      ),
      Center(child: logoWidget()),
      const SizedBox(
        height: 40,
      ),
      Text(
        "LOGIN TO YOUR ACCOUNT",
        style: interBold(fontSize: 24, fontWeight: FontWeight.w500),
      ),
      Text(
        "Enter Email or Phone Number",
        style: interMedium(),
      ),
      textInputField(
        controller: email,
        validate: Validator.email,
        fieldName: "Email",
      ),
      Text(
        "Enter Password",
        style: interMedium(),
      ),
      textInputField(controller: password),
      const SizedBox(
        height: 20.0,
      ),
      Center(
          child: buttonField(
              onPressed: () {
                Get.toNamed(AppRoutes.main);
              },
              input: "LOGIN",
              style: interBold())),
      const SizedBox(
        height: 20.0,
      ),
      Center(
          child: Text(
        "-or Sign In with-",
        style: interBold(),
      )),
      const SizedBox(
        height: 20.0,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          const SizedBox(),
          imageButton(image: RegPng.google, onTap: () {}),
          imageButton(image: RegPng.facebook, onTap: () {}, padding: 5.0),
          imageButton(image: RegPng.twitter, onTap: () {}),
          const SizedBox(),
          const SizedBox()
        ],
      ),
      const SizedBox(
        height: 20.0,
      ),
      Center(
        child: RichText(
            text: TextSpan(children: [
          TextSpan(text: "Dont Have an Account ? ", style: interRegular()),
          WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: InkWell(
                onTap: () {
                  // if (key.currentState!.validate()) {
                  controller.switchAuth();
                  //   SnackNotification.success(message: "Validation Sucessfull");
                  // }
                },
                child: Text(
                  "Sign Up",
                  style: interRegular(color: Colors.blue),
                ),
              ))
        ])),
      )
    ],
  );
}

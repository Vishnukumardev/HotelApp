import '../../../utils/path_provider.dart';

Widget registerWidget(
    {required AuthenticationController controller,
    required TextEditingController email,
    required TextEditingController password,
    required TextEditingController reEnterPassword}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    spacing: 10.0,
    children: [
      SizedBox(
        height: 90,
      ),
      Center(child: logoWidget()),
      SizedBox(
        height: 40,
      ),
      Text(
        "REGISTER ACCOUNT",
        style: interBold(fontSize: 24, fontWeight: FontWeight.w500),
      ),
      Text(
        "Enter Email or Phone Number",
        style: interMedium(),
      ),
      textInputField(controller: email),
      Text(
        "Enter New Password",
        style: interMedium(),
      ),
      textInputField(controller: password),
      Text(
        "Re-enter New Password",
        style: interMedium(),
      ),
      textInputField(controller: reEnterPassword),
      SizedBox(
        height: 20.0,
      ),
      Center(
          child: buttonField(
              onPressed: () {
                Get.toNamed(AppRoutes.main);
              },
              input: "REGISTER")),
      SizedBox(
        height: 20.0,
      ),
      Center(
          child: Text(
        "-or Sign Up with-",
        style: interBold(),
      )),
      SizedBox(
        height: 20.0,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          SizedBox(),
          imageButton(image: RegPng.google, onTap: () {}),
          imageButton(image: RegPng.facebook, onTap: () {}, padding: 5.0),
          imageButton(image: RegPng.twitter, onTap: () {}),
          SizedBox(),
          SizedBox()
        ],
      ),
      SizedBox(
        height: 20.0,
      ),
      Center(
        child: RichText(
            text: TextSpan(children: [
          TextSpan(text: "Have an Account ? ", style: interRegular()),
          WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: InkWell(
                onTap: controller.switchAuth,
                child: Text(
                  "Sign in",
                  style: interRegular(color: Colors.blue),
                ),
              ))
        ])),
      )
    ],
  );
}

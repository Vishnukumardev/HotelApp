import '../../../utils/path_provider.dart';

Widget loginWidget({
  required AuthenticationController controller,
}) {
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
        "LOGIN TO YOUR ACCOUNT",
        style: interBold(fontSize: 24, fontWeight: FontWeight.w500),
      ),
      Text(
        "Enter Email or Phone Number",
        style: interMedium(),
      ),
      textInputField(),
      Text(
        "Enter Password",
        style: interMedium(),
      ),
      textInputField(),
      SizedBox(
        height: 20.0,
      ),
      Center(
          child: buttonField(
              onPressed: () {}, input: "LOGIN", style: interBold())),
      SizedBox(
        height: 20.0,
      ),
      Center(
          child: Text(
        "-or Sign In with-",
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
          TextSpan(text: "Dont Have an Account ? ", style: interRegular()),
          WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: InkWell(
                onTap: controller.switchAuth,
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

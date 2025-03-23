import 'package:ui_app/modules/home/widgets/bookingsWidget.dart';
import 'package:ui_app/modules/home/widgets/guideWidget.dart';
import 'package:ui_app/modules/home/widgets/placesWidget.dart';
import 'package:ui_app/modules/home/widgets/recommendedWidget.dart';
import 'package:ui_app/widgets/appbar.dart';

import '../../utils/path_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        builder: (controller) => Scaffold(
            appBar: commonAppBar(context),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: SingleChildScrollView(
                child: Column(
                  spacing: 20.0,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Explore the\nbeautiful World!",
                      style: interBold(
                          fontSize: 30,
                          height: 1.2,
                          fontWeight: FontWeight.w700),
                    ),
                    searchWidget(context),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Travel Places",
                          style: interBold(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                        Text(
                          "Show More >",
                          style: interRegular(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: grey),
                        ),
                      ],
                    ),
                    SizedBox(height: 300, child: placesWidget()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Get in Touch",
                          style: interBold(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                        Text(
                          "Show More >",
                          style: interRegular(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: grey),
                        ),
                      ],
                    ),
                    SizedBox(height: 230, child: guideWidget()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "My Bookings",
                          style: interBold(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                        Text(
                          "Show More >",
                          style: interRegular(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: grey),
                        ),
                      ],
                    ),
                    SizedBox(height: 300, child: bookingsWidget()),
                    Text(
                      "Recommended",
                      style:
                          interBold(fontWeight: FontWeight.w700, fontSize: 20),
                    ),
                    recommendedWidget()
                  ],
                ),
              ),
            )));
  }
}

import '../../../utils/path_provider.dart';

Widget bookingsWidget() {
  return ListView.builder(
    scrollDirection: Axis.horizontal,
    shrinkWrap: true,
    itemCount: houses.length,
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(15.0),
          child: Container(
            width: 210,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(color: Colors.grey, width: 0.2),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: SizedBox(
                    child:
                        loadingImage(houses[index].houseUrl, width: Get.width),
                  ),
                ),
                SizedBox(height: 5.0),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(houses[index].houseName),
                        SizedBox(height: 10.0),
                        RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.location_on,
                                  size: 15.0,
                                  color: Theme.of(context).primaryColor,
                                ),
                                alignment: PlaceholderAlignment.middle,
                              ),
                              TextSpan(
                                text: "location",
                                style: interRegular(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
      // return Stack(
      //   alignment: Alignment.bottomCenter,
      //   children: [
      //     loadingImage(
      //       houses[index].imageUrl,
      //       width: 200,
      //     ),
      //     Container(
      //       child: Text(
      //         houses[index].location,
      //         style: interBold(),
      //         textAlign: TextAlign.center,
      //       ),
      //     ),
      //   ],
      // );
    },
  );
}

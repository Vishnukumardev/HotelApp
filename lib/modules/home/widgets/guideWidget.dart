import '../../../utils/path_provider.dart';

Widget guideWidget() {
  return ListView.builder(
    scrollDirection: Axis.horizontal,
    shrinkWrap: true,
    itemCount: 1,
    itemBuilder: (context, index) {
      return Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(15.0),
        child: Container(
          width: 210,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(color: Colors.grey, width: 0.2),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              spacing: 10.0,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: loadingImage(hosting, width: 100)),
                ),
                Text("Rebacca"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Material(
                      color: lightGrey,
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        height: 40,
                        width: 80,
                        child: Center(
                          child: RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Icon(
                                    Icons.dialer_sip_rounded,
                                    size: 15.0,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  alignment: PlaceholderAlignment.middle,
                                ),
                                TextSpan(
                                  text: " Call",
                                  style: interRegular(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Material(
                      color: lightGrey,
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        height: 40,
                        width: 100,
                        child: Center(
                          child: RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Icon(
                                    Icons.message,
                                    size: 15.0,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  alignment: PlaceholderAlignment.middle,
                                ),
                                TextSpan(
                                  text: " Message",
                                  style: interRegular(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
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

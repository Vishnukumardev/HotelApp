import '../../../utils/path_provider.dart';

Widget recommendedWidget() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        width: Get.width,
        child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: houses.length,
          itemBuilder: (context, index) {
            return Container(
              height: 280,
              width: Get.width,
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          houses[index].houseUrl,
                          fit: BoxFit.cover,
                          height: 200,
                          width: Get.width,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Center(
                              child: CircularProgressIndicator(
                                value: loadingProgress.expectedTotalBytes !=
                                        null
                                    ? loadingProgress.cumulativeBytesLoaded /
                                        loadingProgress.expectedTotalBytes!
                                    : null,
                              ),
                            );
                          },
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          margin: EdgeInsets.all(10.0),
                          width: 50.0,
                          // Adjust for scaling
                          height: 30.0,
                          // Adjust for scaling
                          child: const Center(
                            child: Icon(
                              Icons.favorite_border,
                              color: Colors.grey,
                              size: 25,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(houses[index].houseName,
                          style: interBold(
                              fontSize: 20.0, fontWeight: FontWeight.w800)),
                      RichText(
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: Icon(
                                Icons.star,
                                color: Theme.of(context).primaryColor,
                                size: 20, // Adjust icon size
                              ),
                            ),
                            TextSpan(
                                text: houses[index].rating,
                                style: interMedium(
                                    fontWeight: FontWeight.w800, fontSize: 15)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
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
            );
          },
        ),
      ),
    ],
  );
}

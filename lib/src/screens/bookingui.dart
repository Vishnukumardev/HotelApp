import 'package:flutter/material.dart';
import '../Components/Widgets.dart';

class Bookingui extends StatelessWidget {
  const Bookingui({super.key});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double textScale = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 10,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildSearchBar(context, screenWidth, screenHeight, textScale),
              const SizedBox(height: 10.0),
              buildPopularLocations(
                  context, screenWidth, screenHeight, textScale),
              buildRecommended(context, screenWidth, screenHeight, textScale),
              buildHostingAd(context, screenWidth, screenHeight, textScale),
              buildMostViewed(context, screenWidth, screenHeight,textScale),
            ],
          ),
        ),
      ),
    );
  }
}

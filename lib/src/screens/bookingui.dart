import 'package:flutter/material.dart';
import '../Components/Widgets.dart';

class Bookingui extends StatelessWidget {
  const Bookingui({super.key});
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 10,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildSearchBar(context),
              const SizedBox(height: 10.0),
              buildPopularLocations(context),
              buildRecommended(context),
              buildHostingAd(context),
              buildMostViewed(context),
            ],
          ),
        ),
      ),
    );
  }}

import '../../utils/path_provider.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FavouriteController>(builder: (controller) => Scaffold());
  }
}

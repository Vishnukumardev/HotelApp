import '../../utils/path_provider.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MapController>(
        builder: (controller) => Scaffold(
                body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text("Map  ${controller.value}")),
                ElevatedButton(onPressed: controller.add, child: Text("add"))
              ],
            )));
  }
}

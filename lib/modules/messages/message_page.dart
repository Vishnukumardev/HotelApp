import '../../utils/path_provider.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MessageController>(
        builder: (controller) =>
            Scaffold(body: Center(child: Text("Messages"))));
  }
}

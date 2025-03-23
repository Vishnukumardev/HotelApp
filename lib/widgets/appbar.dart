import '../utils/path_provider.dart';

AppBar commonAppBar(BuildContext context) {
  return AppBar(
    automaticallyImplyLeading: false,
    title: Text(
      "Hello user",
      style: interBold(fontSize: 20),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          size: 30,
          Icons.notifications,
          color: Theme.of(context).primaryColor,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          size: 30,
          Icons.messenger_outline,
          color: Theme.of(context).primaryColor,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: logoWidget(height: 30, width: 30),
      )
    ],
  );
}

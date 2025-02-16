import 'utils/path_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DependencyInjection.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Rent All',
      initialBinding: AuthenticationBindings(),
      initialRoute: AppRoutes.authentication,
      getPages: AppPages.pages,
      debugShowCheckedModeBanner: false,
    );
  }
}

import 'package:pulse/core/export.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(ThemeController(), permanent: true);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        // Get the already registered ThemeController
        final themeController = Get.find<ThemeController>();
        
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Pulse',
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: themeController.isDarkMode.value
              ? ThemeMode.dark
              : ThemeMode.light,
          home: SplashView(),
        );
      },
    );
  }
}
import 'package:pulse/core/constants.dart';
import 'package:pulse/core/export.dart';

void main() {
  runApp(AppView());
}


class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, child, device){
        return GetMaterialApp(
          title: Constants.appName,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: AppColors.pulsePrimary),
            useMaterial3: true,
          ),
          home:  SplashView(),
        );
      },
    );
  }
}
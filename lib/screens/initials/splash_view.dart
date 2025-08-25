import 'dart:ui';
import 'package:pulse/core/export.dart';
import 'package:pulse/widgets/pulse_loader.dart';
import 'package:pulse/widgets/sizer.dart';
import '../../controllers/splash_controller.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    final SplashController controller = Get.put(SplashController());

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [AppColors.pulsePrimary, AppColors.pulseSecondary],
          ),
        ),
        child: SafeArea(
          bottom: false,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ScaleTransition(
                  scale: controller.logoScale,
                  child: FadeTransition(
                    opacity: controller.logoOpacity,
                    child: _LogoTile(),
                  ),
                ),
                18.height,
                SlideTransition(
                  position: controller.textOffset,
                  child: FadeTransition(
                    opacity: controller.textOpacity,
                    child: CustomText(
                      text: 'Pulse',
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w800,
                      color: AppColors.appWhite,
                      letterSpacing: 4,
                    ),
                  ),
                ),
                const SizedBox(height: 22),
                FadeTransition(
                  opacity: controller.textOpacity,
                  child: PulseLoader(
                    dotCount: 6,
                    primaryColor: AppColors.appWhite,
                    secondaryColor: AppColors.appWhite.withOpacity(0.2),
                    size: 32,
                    orbitRadius: 14,
                    dotSize: 5,
                    pulseScale: 1.4,
                    animationDuration: Duration(milliseconds: 1200),
                    reverse: true,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _LogoTile extends StatefulWidget {
  @override
  State<_LogoTile> createState() => _LogoTileState();
}

class _LogoTileState extends State<_LogoTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 84,
      height: 84,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.white.withOpacity(0.18),
            Colors.white.withOpacity(0.06),
          ],
        ),
        border: Border.all(color: Colors.white.withOpacity(0.25), width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.18),
            blurRadius: 18,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.white.withOpacity(0.35),
              Colors.white.withOpacity(0.10),
            ],
          ),
        ),
        child: Center(
          child: Icon(
            Icons.monitor_heart_rounded,
            size: 36,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pulse/core/app_assets.dart';
import 'package:pulse/core/export.dart';
import 'package:pulse/screens/home/profile-view.dart';
import 'package:pulse/widgets/custom_text.dart';
import 'package:pulse/widgets/sizer.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String welcomeText;
  final String userName;
  final List<Widget>? actions;
  final double height;
  final Color? backgroundColor;

  const HomeAppBar({
    Key? key,
    required this.welcomeText,
    required this.userName,
    this.actions,
    this.height = kToolbarHeight * 1.6,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
        border: Border(
          bottom: BorderSide(
            color: AppColors.whiteColor.withOpacity(0.1),
            width: 1,
          ),
        ),
      ),
      height: height,
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Get.to(
                ProfileView(),
                transition: Transition.cupertino,
                duration: Duration(milliseconds: 450),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.pulsePrimary, width: 1.5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 6,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: CircleAvatar(
                radius: 22.sp,
                backgroundColor: Colors.transparent,
                child: ClipOval(
                  child: Image.asset(
                    AppAssets.fitness_man,
                    fit: BoxFit.cover,
                    width: 44.sp,
                    height: 44.sp,
                  ),
                ),
              ),
            ),
          ),

          16.width,
          // User info column with subtle animation
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AnimatedOpacity(
                  duration: const Duration(milliseconds: 300),
                  opacity: 0.8,
                  child: CustomText(
                    text: welcomeText,
                    color: AppColors.textGrey,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.5,
                  ),
                ),
                CustomText(
                  text: userName,
                  color: AppColors.text,
                  fontSize: 14.sp, // Slightly larger for emphasis
                  fontWeight: FontWeight.w700, // Bolder weight
                  letterSpacing: 0.1,
                ),
              ],
            ),
          ),

          // Action icons with individual circular backgrounds
          if (actions != null && actions!.isNotEmpty)
            Row(
              mainAxisSize: MainAxisSize.min,
              children: actions!
                  .map(
                    (action) => Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.iconBg,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: ScaleTransition(
                          scale: AlwaysStoppedAnimation(1),
                          child: action,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}

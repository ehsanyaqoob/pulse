import 'package:flutter/material.dart';
import 'package:pulse/core/export.dart';

class RoundedTabBar extends StatelessWidget {
  final TabController controller;

  const RoundedTabBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6.h,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: AppColors.greycolor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TabBar(
        controller: controller,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: AppColors.whiteColor,
        ),
        labelColor: Colors.black,
        unselectedLabelColor: AppColors.greycolor,
        labelStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp),
        tabs: const [
          Tab(text: 'Round Trip'),
          Tab(text: 'One Way'),
          Tab(text: 'Multiple Trip'),
        ],
      ),
    );
  }
}

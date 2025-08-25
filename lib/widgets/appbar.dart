import 'package:flutter/material.dart';
import '../core/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final TextStyle? titleStyle;
  final Color? backgroundColor;
  final Color? titleColor;
  final double? elevation;
  final bool centerTitle;
  final bool automaticallyImplyLeading;
  final List<Widget>? actions;
  final Widget? leading;

  const CustomAppBar({
    super.key,
    this.title,
    this.titleStyle,
    this.backgroundColor,
    this.titleColor,
    this.elevation,
    this.centerTitle = false,
    this.automaticallyImplyLeading = true,
    this.actions,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title ?? '',
        style: titleStyle ??
            TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: titleColor ?? AppColors.text,
            ),
      ),
      centerTitle: centerTitle,
      elevation: elevation ?? 0,
      backgroundColor: backgroundColor ?? AppColors.scaffoldBackgroundColor,
      automaticallyImplyLeading: automaticallyImplyLeading,
      leading: leading,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

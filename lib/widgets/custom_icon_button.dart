import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  final Color? iconColor;
  final double? iconSize;
  final double? minWidth;
  const CustomIconButton({
    super.key,
    required this.onTap,
    required this.icon,
    this.iconColor,
    this.iconSize,
    this.minWidth,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      splashRadius: 22,
      iconSize: iconSize ?? 22,
      padding: EdgeInsets.zero,
      constraints: BoxConstraints(minWidth: minWidth ?? 40),
      icon: Icon(
        icon,
        // color: context.theme.greyColor,
        color: Colors.grey,
      ),
    );
  }
}

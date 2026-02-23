import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

class MainBackAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainBackAppBar({
    super.key,
    this.onPressed,
    required this.title,
    required this.actionIcon,
  });
  final void Function()? onPressed;
  final String title;
  final IconData actionIcon;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: onPressed ?? () => context.pop(),
        icon: Icon(Iconsax.arrow_left_2),
      ),
      scrolledUnderElevation: 0.0,
      title: Text(title),
      actions: [IconButton(onPressed: () {}, icon: Icon(actionIcon))],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56);
}

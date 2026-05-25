import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      automaticallyImplyLeading: false,
      backgroundColor: Colors.black,
      leading: IconButton(
        onPressed: () {
          AutoRouter.of(context).maybePop();
        },
        icon: const Icon(
          Icons.keyboard_arrow_left,
          size: 40,
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

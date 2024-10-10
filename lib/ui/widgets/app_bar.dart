import 'package:confeitaria/ui/cores.dart';
import 'package:confeitaria/ui/text.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        title,
        style: FontsEstilos.textTitle,
      ),
      backgroundColor: PaletaCores.backgroundWhite,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

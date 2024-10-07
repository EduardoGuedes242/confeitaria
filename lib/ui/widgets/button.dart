import 'package:confeitaria/ui/cores.dart';
import 'package:confeitaria/ui/text.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({
    super.key,
    required this.title,
    required this.onClick,
    this.color = PaletaCores.greenPrimary,
  });

  final String title;
  final Function onClick;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onClick(),
      child: Container(
        height: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color,
        ),
        child: Center(
          child: Text(
            title,
            style: FontsEstilos.titleButton,
          ),
        ),
      ),
    );
  }
}

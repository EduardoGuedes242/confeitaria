import 'package:confeitaria/ui/cores.dart';
import 'package:confeitaria/ui/text.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({
    super.key,
    required this.title,
    required this.onClick,
    this.color = PaletaCores.greenPrimary,
    this.widthButton = 0,
    this.paddingTop = 14,
  });

  final String title;
  final Function onClick;
  final Color color;
  final double widthButton;
  final double paddingTop;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: paddingTop),
      child: GestureDetector(
        onTap: () => onClick(),
        child: Container(
          height: 48,
          width:
              widthButton == 0 ? MediaQuery.sizeOf(context).width : widthButton,
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
      ),
    );
  }
}

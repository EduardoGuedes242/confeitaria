// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:confeitaria/ui/cores.dart';
import 'package:confeitaria/ui/text.dart';
import 'package:flutter/material.dart';

class ItemMenu extends StatelessWidget {
  const ItemMenu({
    super.key,
    required this.title,
    required this.nameImage,
    required this.onClick,
  });

  final String title;
  final String nameImage;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: GestureDetector(
        onTap: () => onClick(),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: PaletaCores.greenSecundary,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 80,
                  width: 80,
                  child: Image.asset('assets/images/menu/$nameImage'),
                ),
                SizedBox(height: 5),
                Text(
                  title,
                  style: FontsEstilos.titleButton,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

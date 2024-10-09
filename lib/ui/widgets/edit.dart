import 'package:confeitaria/ui/input.dart';
import 'package:confeitaria/ui/text.dart';
import 'package:flutter/material.dart';

class Edit extends StatelessWidget {
  const Edit(
      {super.key,
      required this.title,
      required this.controller,
      this.hintText = '',
      this.width = 0});

  final String title;
  final String hintText;
  final TextEditingController controller;
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      width: width == 0 ? double.infinity : width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: FontsEstilos.titleEdit),
          const SizedBox(height: 6),
          TextFormField(
            controller: controller,
            decoration: EstilosInput.inputSimples.copyWith(hintText: hintText),
          ),
        ],
      ),
    );
  }
}

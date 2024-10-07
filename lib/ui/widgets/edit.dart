import 'package:confeitaria/ui/input.dart';
import 'package:confeitaria/ui/text.dart';
import 'package:flutter/material.dart';

class Edit extends StatelessWidget {
  const Edit(
      {super.key,
      required this.title,
      required this.controller,
      this.hintText = ''});

  final String title;
  final String hintText;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: FontsEstilos.titleEdit),
          const SizedBox(height: 10),
          TextFormField(
            controller: controller,
            decoration: EstilosInput.inputSimples.copyWith(hintText: hintText),
          ),
        ],
      ),
    );
  }
}

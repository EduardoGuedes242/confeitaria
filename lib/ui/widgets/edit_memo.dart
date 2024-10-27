import 'package:confeitaria/ui/input.dart';
import 'package:confeitaria/ui/text.dart';
import 'package:flutter/material.dart';

class EditMemo extends StatelessWidget {
  const EditMemo(
      {super.key,
      required this.title,
      required this.controller,
      this.hintText = '',
      this.width = 0,
      this.paddingTop = 14});

  final String title;
  final String hintText;
  final TextEditingController controller;
  final double width;
  final double paddingTop;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: paddingTop),
      child: SizedBox(
        height: 150,
        width: width == 0 ? double.infinity : width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: FontsEstilos.titleEdit,
            ),
            const SizedBox(height: 8),
            Expanded(
              child: TextFormField(
                controller: controller,
                maxLines: 6,
                decoration: EstilosInput.inputSimples.copyWith(
                  hintText: hintText,
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

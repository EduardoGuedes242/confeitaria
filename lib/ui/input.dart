import 'package:confeitaria/ui/cores.dart';
import 'package:flutter/material.dart';

class EstilosInput {
  static InputDecoration inputSimples = InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: PaletaCores.greenPrimary,
        width: 1.5,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: PaletaCores.black,
        width: 0.7,
      ),
    ),
  );
}

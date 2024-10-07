import 'package:confeitaria/ui/input.dart';
import 'package:confeitaria/ui/text.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class Combobox extends StatelessWidget {
  const Combobox({
    super.key,
    required this.title,
    required this.options,
    this.hintText = '',
    this.selectedValue,
    required this.onChanged,
  });

  final String title;
  final String hintText;
  final List<String> options;
  final String? selectedValue;
  final ValueChanged<String?> onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: FontsEstilos.titleEdit),
          const SizedBox(height: 10),
          DropdownButtonFormField2<String>(
            isExpanded: true,
            value: selectedValue,
            decoration: EstilosInput.inputSimples,
            hint: Text(
              hintText,
              style: const TextStyle(fontSize: 14),
            ),
            items: options
                .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ))
                .toList(),
            onChanged: onChanged,
            buttonStyleData: const ButtonStyleData(
              padding: EdgeInsets.only(right: 8),
            ),
            iconStyleData: const IconStyleData(
              icon: Icon(
                Icons.arrow_drop_down,
                color: Colors.black45,
              ),
              iconSize: 24,
            ),
            dropdownStyleData: DropdownStyleData(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            menuItemStyleData: const MenuItemStyleData(
              padding: EdgeInsets.symmetric(horizontal: 16),
            ),
          ),
        ],
      ),
    );
  }
}

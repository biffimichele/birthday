import 'package:flutter/material.dart';

class SelectionDropdown extends StatelessWidget {
  const SelectionDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Select destinations:'),
        Text('Dropdwon button menu'),
      ],
    );
  }
}

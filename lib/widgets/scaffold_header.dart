import 'package:flutter/material.dart';

class ScaffoldHeader extends StatelessWidget {
  final String headerText;
  const ScaffoldHeader({
    super.key,
    required this.headerText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
      ),
      child: Text(
        headerText,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}
